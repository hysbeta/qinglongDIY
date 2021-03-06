import os
from telethon import events, Button
import requests
import re
import time
import qrcode
from asyncio import exceptions
from .. import jdbot, chat_id, _ConfigDir, img_file, mybot, chname
from . import utils
_config = _ConfigDir + '/config.sh'
_CookiesDB = '/ql/db/env.db'
cookiemsg = ''
# 扫码获取cookie 直接采用LOF大佬代码
# getSToken请求获取，s_token用于发送post请求是的必须参数
s_token = ""
# getSToken请求获取，guid,lsid,lstoken用于组装cookies
guid, lsid, lstoken = "", "", ""
# 由上面参数组装生成，getOKLToken函数发送请求需要使用
cookies = ""
# getOKLToken请求获取，token用户生成二维码使用、okl_token用户检查扫码登录结果使用
token, okl_token = "", ""
# 最终获取到的可用的cookie
jd_cookie = ""


def getSToken():
    time_stamp = int(time.time() * 1000)
    get_url = 'https://plogin.m.jd.com/cgi-bin/mm/new_login_entrance?lang=chs&appid=300&returnurl=https://wq.jd.com/passport/LoginRedirect?state=%s&returnurl=https://home.m.jd.com/myJd/newhome.action?sceneval=2&ufc=&/myJd/home.action&source=wq_passport' % time_stamp
    get_header = {
        'Connection': 'Keep-Alive',
        'Content-Type': 'application/x-www-form-urlencoded',
        'Accept': 'application/json, text/plain, */*',
        'Accept-Language': 'zh-cn',
        'Referer': 'https://plogin.m.jd.com/login/login?appid=300&returnurl=https://wq.jd.com/passport/LoginRedirect?state=%s&returnurl=https://home.m.jd.com/myJd/newhome.action?sceneval=2&ufc=&/myJd/home.action&source=wq_passport' % time_stamp,
        'User-Agent': 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_3_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Mobile/15E148 SP-engine/2.14.0 main%2F1.0 baiduboxapp/11.18.0.16 (Baidu; P2 13.3.1) NABar/0.0',
        'Host': 'plogin.m.jd.com'
    }
    resp = requests.get(url=get_url, headers=get_header)
    parseGetRespCookie(resp.headers, resp.json())


def parseGetRespCookie(headers, get_resp):
    global s_token
    global cookies
    s_token = get_resp.get('s_token')
    set_cookies = headers.get('set-cookie')
    guid = re.findall(r"guid=(.+?);", set_cookies)[0]
    lsid = re.findall(r"lsid=(.+?);", set_cookies)[0]
    lstoken = re.findall(r"lstoken=(.+?);", set_cookies)[0]
    cookies = f"guid={guid}; lang=chs; lsid={lsid}; lstoken={lstoken}; "


def getOKLToken():
    post_time_stamp = int(time.time() * 1000)
    post_url = 'https://plogin.m.jd.com/cgi-bin/m/tmauthreflogurl?s_token=%s&v=%s&remember=true' % (
        s_token, post_time_stamp)
    post_data = {
        'lang': 'chs',
        'appid': 300,
        'returnurl': 'https://wqlogin2.jd.com/passport/LoginRedirect?state=%s&returnurl=//home.m.jd.com/myJd/newhome.action?sceneval=2&ufc=&/myJd/home.action' % post_time_stamp,
        'source': 'wq_passport'
    }
    post_header = {
        'Connection': 'Keep-Alive',
        'Content-Type': 'application/x-www-form-urlencoded; Charset=UTF-8',
        'Accept': 'application/json, text/plain, */*',
        'Cookie': cookies,
        'Referer': 'https://plogin.m.jd.com/login/login?appid=300&returnurl=https://wqlogin2.jd.com/passport/LoginRedirect?state=%s&returnurl=//home.m.jd.com/myJd/newhome.action?sceneval=2&ufc=&/myJd/home.action&source=wq_passport' % post_time_stamp,
        'User-Agent': 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_3_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Mobile/15E148 SP-engine/2.14.0 main%2F1.0 baiduboxapp/11.18.0.16 (Baidu; P2 13.3.1) NABar/0.0',
        'Host': 'plogin.m.jd.com',
    }
    try:
        global okl_token
        resp = requests.post(
            url=post_url, headers=post_header, data=post_data, timeout=20)
        parsePostRespCookie(resp.headers, resp.json())
    except Exception as error:
        print("Post网络请求错误", error)


def parsePostRespCookie(headers, data):
    global token
    global okl_token
    token = data.get('token')
    okl_token = re.findall(r"okl_token=(.+?);", headers.get('set-cookie'))[0]


def parseJDCookies(headers):
    global jd_cookie
    set_cookie = headers.get('Set-Cookie')
    pt_key = re.findall(r"pt_key=(.+?);", set_cookie)[0]
    pt_pin = re.findall(r"pt_pin=(.+?);", set_cookie)[0]
    jd_cookie = f'pt_key={pt_key};pt_pin={pt_pin};'


def creatqr(text):
    '''实例化QRCode生成qr对象'''
    qr = qrcode.QRCode(
        version=1,
        error_correction=qrcode.constants.ERROR_CORRECT_H,
        box_size=10,
        border=4
    )
    qr.clear()
    # 传入数据
    qr.add_data(text)
    qr.make(fit=True)
    # 生成二维码
    img = qr.make_image()
    # 保存二维码
    img.save(img_file)


@jdbot.on(events.NewMessage(from_users=chat_id, pattern=r'^/getcookie'))
async def my_cookie(event):
    '''接收/getcookie后执行程序'''
    login = True
    msg = await jdbot.send_message(chat_id, '正在获取二维码，请稍后')
    global cookiemsg
    try:
        SENDER = event.sender_id
        async with jdbot.conversation(SENDER, timeout=30) as conv:
            getSToken()
            getOKLToken()
            url = f'https://plogin.m.jd.com/cgi-bin/m/tmauth?appid=300&client_type=m&token={token}'
            creatqr(url)
            markup = [Button.inline("已扫码", data='confirm'),
                      Button.inline("取消", data='cancel')]
            await jdbot.delete_messages(chat_id, msg)
            cookiemsg = await jdbot.send_message(chat_id, '30s内点击取消将取消本次操作\n如不取消，扫码结果将于30s后显示\n扫码后不想等待点击已扫码', file=img_file, buttons=markup)
            convdata = await conv.wait_event(utils.press_event(SENDER))
            res = bytes.decode(convdata.data)
            if res == 'cancel':
                login = False
                await jdbot.delete_messages(chat_id, cookiemsg)
                msg = await conv.send_message('对话已取消')
                conv.cancel()
            else:
                raise exceptions.TimeoutError()
    except exceptions.TimeoutError:
        expired_time = time.time() + 60 * 2
        while login:
            check_time_stamp = int(time.time() * 1000)
            check_url = 'https://plogin.m.jd.com/cgi-bin/m/tmauthchecktoken?&token=%s&ou_state=0&okl_token=%s' % (
                token, okl_token)
            check_data = {
                'lang': 'chs',
                'appid': 300,
                'returnurl': 'https://wqlogin2.jd.com/passport/LoginRedirect?state=%s&returnurl=//home.m.jd.com/myJd/newhome.action?sceneval=2&ufc=&/myJd/home.action' % check_time_stamp,
                'source': 'wq_passport'
            }
            check_header = {
                'Referer': f'https://plogin.m.jd.com/login/login?appid=300&returnurl=https://wqlogin2.jd.com/passport/LoginRedirect?state=%s&returnurl=//home.m.jd.com/myJd/newhome.action?sceneval=2&ufc=&/myJd/home.action&source=wq_passport' % check_time_stamp,
                'Cookie': cookies,
                'Connection': 'Keep-Alive',
                'Content-Type': 'application/x-www-form-urlencoded; Charset=UTF-8',
                'Accept': 'application/json, text/plain, */*',
                'User-Agent': 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_3_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Mobile/15E148 SP-engine/2.14.0 main%2F1.0 baiduboxapp/11.18.0.16 (Baidu; P2 13.3.1) NABar/0.0',
            }
            resp = requests.post(
                url=check_url, headers=check_header, data=check_data, timeout=30)
            data = resp.json()
            if data.get("errcode") == 0:
                parseJDCookies(resp.headers)
                await jdbot.delete_messages(chat_id, cookiemsg)
                await jdbot.send_message(chat_id, '以下为获取到的cookie')
                await jdbot.send_message(chat_id, jd_cookie)
                i = 1
                #分离收到的pt_pin用于匹配
                pt_pin = jd_cookie.split(";")[1]
                #区分Docker类型，若ql脚本存在则默认为QL docker，否则默认为v4
                if os.path.exists('/usr/local/bin/ql'):
                    #加载config.sh文件内容
                    config = open(_CookiesDB, 'r', encoding='utf-8').readlines()
                    config_text = open(_CookiesDB, 'r', encoding='utf-8').read()
                    for record in config:
                        if record.strip() is not None:
                            i = i + 1
                    if pt_pin in config_text:
                        for line in config:
                            if pt_pin in line:
                                config[config.index(line)] = line.replace(line.split("\"")[3], jd_cookie)
                        try:
                            open(_CookiesDB, 'w+', encoding='utf-8').writelines(config)
                            await jdbot.send_message(chat_id,"更新"+str(pt_pin)+"的Cookies成功！当前共有："+str(i-1)+"个Cookies")
                        except Exception as error:
                            await jdbot.send_message(chat_id,"更新"+str(pt_pin)+"的Cookies失败，请重试！")
                    else:
                        # 由于没搞明白_CookiesDB里面的_id是怎么生成的，所以不支持增加新Cookies
                        await jdbot.send_message(chat_id,"Cookies:"+str(pt_pin)+"不存在，请先在面板添加！")
                    os.system("/usr/local/bin/pm2 reload all")
                else:
                    #加载config.sh文件内容
                    config = open(_config, 'r', encoding='utf-8').readlines()
                    config_text = open(_config, 'r', encoding='utf-8').read()
                    while "Cookie" + str(i) in config_text:
                        i = i + 1
                    if pt_pin in config_text:
                        for line in config:
                            if pt_pin in line:
                                config[config.index(line)] = line.replace(line.split("\"")[1], jd_cookie)
                        try:
                            open(_config, 'w+', encoding='utf-8').writelines(config)
                            await jdbot.send_message(chat_id,"更新"+str(pt_pin)+"的Cookies成功！当前共有："+str(i-1)+"个Cookies")
                        except Exception as error:
                            await jdbot.send_message(chat_id,"更新"+str(pt_pin)+"的Cookies失败，请重试！")
                    else:
                        try:
                            open(_config, 'a', encoding='utf-8').write('\n' + "Cookie" + str(i) + "=\"" + jd_cookie + "\"")
                            await jdbot.send_message(chat_id,"添加"+str(pt_pin)+"的Cookies成功！当前共有："+str(i)+"个Cookies")
                        except Exception as error:
                            await jdbot.send_message(chat_id,"添加"+str(pt_pin)+"的Cookies失败，请重试！")
                return
            if data.get("errcode") == 21:
                await jdbot.delete_messages(chat_id, cookiemsg)
                await jdbot.send_message(chat_id, f'发生了某些错误\n{data.get("errcode")}')
                return
            if time.time() > expired_time:
                await jdbot.delete_messages(chat_id, cookiemsg)
                await jdbot.send_message(chat_id, '超过3分钟未扫码，二维码已过期')
                return
    except Exception as e:
        await jdbot.send_message(chat_id, f'something wrong,I\'m sorry\n{str(e)}')
                
if chname:
    jdbot.add_event_handler(my_cookie, events.NewMessage(
        from_users=chat_id, pattern=mybot['命令别名']['getcookie']))
