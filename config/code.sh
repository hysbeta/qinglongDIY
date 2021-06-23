#!/usr/bin/env bash

## 导入通用变量与函数
## 目录
dir_root=/ql
dir_shell=$dir_root/shell
dir_sample=$dir_root/sample
dir_config=$dir_root/config
dir_scripts=$dir_root/scripts
dir_repo=$dir_root/repo
dir_raw=$dir_root/raw
dir_log=$dir_root/log
dir_db=$dir_root/db
dir_manual_log=$dir_root/manual_log
dir_list_tmp=$dir_log/.tmp
dir_code=$dir_log/code
dir_update_log=$dir_log/update
ql_static_repo=$dir_repo/static

## 文件
file_config_sample=$dir_sample/config.sample.sh
file_cookie=$dir_config/cookie.sh
file_sharecode=$dir_config/sharecode.sh
file_config_user=$dir_config/config.sh
file_auth_sample=$dir_sample/auth.sample.json
file_auth_user=$dir_config/auth.json
file_extra_shell=$dir_config/extra.sh
file_extra_sample=$dir_sample/extra.sample.sh
file_notify_js_sample=$dir_sample/notify.js
file_notify_py_sample=$dir_sample/notify.py
file_notify_py=$dir_scripts/notify.py
file_notify_js=$dir_scripts/sendNotify.js

## 清单文件
list_crontab_user=$dir_config/crontab.list
list_crontab_sample=$dir_sample/crontab.sample.list
list_own_scripts=$dir_list_tmp/own_scripts.list
list_own_user=$dir_list_tmp/own_user.list
list_own_add=$dir_list_tmp/own_add.list
list_own_drop=$dir_list_tmp/own_drop.list

## 软连接及其原始文件对应关系
link_name=(
    task
    ql
    notify
)
original_name=(
    task.sh
    update.sh
    notify.sh
)

## 导入配置文件
import_config() {
    [ -f $file_config_user ] && . $file_config_user
    user_sum=0
    for line in $(cat $file_cookie); do
        let user_sum+=1
        eval Cookie${user_sum}="\"${line}\""
    done

    command_timeout_time=${CommandTimeoutTime:-"1h"}
    github_proxy_url=${GithubProxyUrl:-""}
    block_cookie=${TempBlockCookie:-""}
    file_extensions=${RepoFileExtensions:-"js py"}
}

## 创建目录，$1：目录的绝对路径
make_dir() {
    local dir=$1
    if [[ ! -d $dir ]]; then
        mkdir -p $dir
    fi
}

## 检测termux
detect_termux() {
    if [[ ${ANDROID_RUNTIME_ROOT}${ANDROID_ROOT} ]] || [[ $PATH == *com.termux* ]]; then
        is_termux=1
    else
        is_termux=0
    fi
}

## 检测macos
detect_macos() {
    [[ $(uname -s) == Darwin ]] && is_macos=1 || is_macos=0
}

## 生成随机数，$1：用来求余的数字
gen_random_num() {
    local divi=$1
    echo $((${RANDOM} % $divi))
}

## 创建软连接的子函数，$1：软连接文件路径，$2：要连接的对象
link_shell_sub() {
    local link_path="$1"
    local original_path="$2"
    if [ ! -L $link_path ] || [[ $(readlink -f $link_path) != $original_path ]]; then
        rm -f $link_path 2>/dev/null
        ln -sf $original_path $link_path
    fi
}

## 创建软连接
link_shell() {
    if [[ $is_termux -eq 1 ]]; then
        local path="/data/data/com.termux/files/usr/bin/"
    elif [[ $PATH == */usr/local/bin* ]] && [ -d /usr/local/bin ]; then
        local path="/usr/local/bin/"
    else
        local path=""
        echo -e "脚本功能受限，请自行添加命令的软连接...\n"
    fi
    if [[ $path ]]; then
        for ((i = 0; i < ${#link_name[*]}; i++)); do
            link_shell_sub "$path${link_name[i]}" "$dir_shell/${original_name[i]}"
        done
    fi
}

## 定义各命令
define_cmd() {
    local cmd_prefix cmd_suffix
    if type task >/dev/null 2>&1; then
        cmd_suffix=""
        if [ -x "$dir_shell/task.sh" ]; then
            cmd_prefix=""
        else
            cmd_prefix="bash "
        fi
    else
        cmd_suffix=".sh"
        if [ -x "$dir_shell/task.sh" ]; then
            cmd_prefix="$dir_shell/"
        else
            cmd_prefix="bash $dir_shell/"
        fi
    fi
    for ((i = 0; i < ${#link_name[*]}; i++)); do
        export cmd_${link_name[i]}="${cmd_prefix}${link_name[i]}${cmd_suffix}"
    done
}

## 修复配置文件
fix_config() {
    make_dir $dir_config
    make_dir $dir_log
    make_dir $dir_db
    make_dir $dir_manual_log
    make_dir $dir_scripts
    make_dir $dir_list_tmp
    make_dir $dir_repo
    make_dir $dir_raw
    make_dir $dir_update_log

    if [ ! -s $file_config_user ]; then
        echo -e "复制一份 $file_config_sample 为 $file_config_user，随后请按注释编辑你的配置文件：$file_config_user\n"
        cp -fv $file_config_sample $file_config_user
        echo
    fi

    if [ ! -f $file_cookie ]; then
        echo -e "检测到config配置目录下不存在cookie.sh，创建一个空文件用于初始化...\n"
        touch $file_cookie
        echo
    fi

    if [ ! -f $file_extra_shell ]; then
        echo -e "复制一份 $file_extra_sample 为 $file_extra_shell\n"
        cp -fv $file_extra_sample $file_extra_shell
        echo
    fi

    if [ ! -s $file_auth_user ]; then
        echo -e "复制一份 $file_auth_sample 为 $file_auth_user\n"
        cp -fv $file_auth_sample $file_auth_user
        echo
    fi

    if [ ! -s $file_notify_py ]; then
        echo -e "复制一份 $file_notify_py_sample 为 $file_notify_py\n"
        cp -fv $file_notify_py_sample $file_notify_py
        echo
    fi

    if [ ! -s $file_notify_js ]; then
        echo -e "复制一份 $file_notify_js_sample 为 $file_notify_js\n"
        cp -fv $file_notify_js_sample $file_notify_js
        echo
    fi

    if [ -s /etc/nginx/conf.d/default.conf ]; then
        echo -e "检测到默认nginx配置文件，删除...\n"
        rm -f /etc/nginx/conf.d/default.conf
        echo
    fi
}

## npm install 子程序，判断是否为安卓，判断是否安装有pnpm
npm_install_sub() {
    if [ $is_termux -eq 1 ]; then
        npm install --production --no-save --no-bin-links --registry=https://registry.npm.taobao.org || npm install --production --no-bin-links --no-save
    elif ! type pnpm >/dev/null 2>&1; then
        npm install --production --no-save --registry=https://registry.npm.taobao.org || npm install --production --no-save
    else
        echo -e "检测到本机安装了 pnpm，使用 pnpm 替代 ...\n"
        pnpm install --prod
    fi
}

## npm install，$1：package.json文件所在路径
npm_install_1() {
    local dir_current=$(pwd)
    local dir_work=$1

    cd $dir_work
    echo -e "运行 npm install...\n"
    npm_install_sub
    [[ $? -ne 0 ]] && echo -e "\nnpm install 运行不成功，请进入 $dir_work 目录后手动运行 npm install...\n"
    cd $dir_current
}

npm_install_2() {
    local dir_current=$(pwd)
    local dir_work=$1

    cd $dir_work
    echo -e "检测到 $dir_work 的依赖包有变化，运行 npm install...\n"
    npm_install_sub
    if [[ $? -ne 0 ]]; then
        echo -e "\n安装 $dir_work 的依赖包运行不成功，再次尝试一遍...\n"
        npm_install_1 $dir_work
    fi
    cd $dir_current
}

## 比对两个文件，$1比$2新时，将$1复制为$2
diff_and_copy() {
    local copy_source=$1
    local copy_to=$2
    if [ ! -s $copy_to ] || [[ $(diff $copy_source $copy_to) ]]; then
        cp -f $copy_source $copy_to
    fi
}

## 更新依赖
update_depend() {
    local dir_current=$(pwd)

    if [ ! -s $dir_scripts/package.json ] || [[ $(diff $dir_sample/package.json $dir_scripts/package.json) ]]; then
        cp -f $dir_sample/package.json $dir_scripts/package.json
        npm_install_2 $dir_scripts
    fi

    if [ ! -s $dir_scripts/requirements.txt ] || [[ $(diff $dir_sample/requirements.txt $dir_scripts/requirements.txt) ]]; then
        cp -f $dir_sample/requirements.txt $dir_scripts/requirements.txt
        cd $dir_scripts
        pip3 install -r $dir_scripts/requirements.txt
    fi

    cd $dir_current
}

## 克隆脚本，$1：仓库地址，$2：仓库保存路径，$3：分支（可省略）
git_clone_scripts() {
    local url=$1
    local dir=$2
    local branch=$3
    [[ $branch ]] && local cmd="-b $branch "
    echo -e "开始克隆仓库 $url 到 $dir\n"
    git clone $cmd $url $dir
    exit_status=$?
}

## 更新脚本，$1：仓库保存路径
git_pull_scripts() {
    local dir_current=$(pwd)
    local dir_work="$1"
    local branch="$2"
    [[ $branch ]] && local cmd="origin/${branch}"
    cd $dir_work
    echo -e "开始更新仓库：$dir_work\n"
    git fetch --all
    exit_status=$?
    git reset --hard $cmd
    git pull
    cd $dir_current
}

init_env() {
    TempBlockCookie=""
}

## 导入配置文件，检测平台，创建软连接，识别命令，修复配置文件
detect_termux
detect_macos
define_cmd
init_env
import_config $1

## 生成pt_pin清单
gen_pt_pin_array() {
    local tmp1 tmp2 i pt_pin_temp
    for ((user_num = 1; user_num <= $user_sum; user_num++)); do
        tmp1=Cookie$user_num
        tmp2=${!tmp1}
        i=$(($user_num - 1))
        pt_pin_temp=$(echo $tmp2 | perl -pe "{s|.*pt_pin=([^; ]+)(?=;?).*|\1|; s|%|\\\x|g}")
        [[ $pt_pin_temp == *\\x* ]] && pt_pin[i]=$(printf $pt_pin_temp) || pt_pin[i]=$pt_pin_temp
    done
}

## 导出互助码的通用程序，$1：去掉后缀的脚本名称，$2：config.sh中的后缀，$3：活动中文名称
export_codes_sub() {
    local task_name=$1
    local config_name=$2
    local chinese_name=$3
    local config_name_my=My$config_name
    local config_name_for_other=ForOther$config_name
    local i j k m n pt_pin_in_log code tmp_grep tmp_my_code tmp_for_other user_num random_num_list
    if cd $dir_log/$task_name &>/dev/null && [[ $(ls) ]]; then
        ## 寻找所有互助码以及对应的pt_pin
        i=0
        pt_pin_in_log=()
        code=()
        pt_pin_and_code=$(ls -r *.log | xargs awk -v var="的$chinese_name好友互助码" 'BEGIN{FS="[（ ）】]+"; OFS="&"} $3~var {print $2,$4}')
        for line in $pt_pin_and_code; do
            pt_pin_in_log[i]=$(echo $line | awk -F "&" '{print $1}')
            code[i]=$(echo $line | awk -F "&" '{print $2}')
            let i++
        done

        ## 输出My系列变量
        if [[ ${#code[*]} -gt 0 ]]; then
            for ((m = 0; m < ${#pt_pin[*]}; m++)); do
                tmp_my_code=""
                j=$((m + 1))
                for ((n = 0; n < ${#code[*]}; n++)); do
                    if [[ ${pt_pin[m]} == ${pt_pin_in_log[n]} ]]; then
                        tmp_my_code=${code[n]}
                        break
                    fi
                done
                echo "$config_name_my$j='$tmp_my_code'"
            done
        else
            echo "## 从日志中未找到任何互助码"
        fi

        ## 输出ForOther系列变量
        if [[ ${#code[*]} -gt 0 ]]; then
            echo
            case $HelpType in
            0) ## 全部一致
                tmp_for_other=""
                for ((m = 0; m < ${#pt_pin[*]}; m++)); do
                    j=$((m + 1))
                    tmp_for_other="$tmp_for_other@\${$config_name_my$j}"
                done
                echo "${config_name_for_other}1=\"$tmp_for_other\"" | perl -pe "s|($config_name_for_other\d+=\")@|\1|"
                for ((m = 1; m < ${#pt_pin[*]}; m++)); do
                    j=$((m + 1))
                    echo "$config_name_for_other$j=\"\${${config_name_for_other}1}\""
                done
                ;;

            1) ## 均等助力
                for ((m = 0; m < ${#pt_pin[*]}; m++)); do
                    tmp_for_other=""
                    j=$((m + 1))
                    for ((n = $m; n < $(($user_sum + $m)); n++)); do
                        [[ $m -eq $n ]] && continue
                        if [[ $((n + 1)) -le $user_sum ]]; then
                            k=$((n + 1))
                        else
                            k=$((n + 1 - $user_sum))
                        fi
                        tmp_for_other="$tmp_for_other@\${$config_name_my$k}"
                    done
                    echo "$config_name_for_other$j=\"$tmp_for_other\"" | perl -pe "s|($config_name_for_other\d+=\")@|\1|"
                done
                ;;

            2) ## 本套脚本内账号间随机顺序助力
                for ((m = 0; m < ${#pt_pin[*]}; m++)); do
                    tmp_for_other=""
                    random_num_list=$(seq $user_sum | sort -R)
                    j=$((m + 1))
                    for n in $random_num_list; do
                        [[ $j -eq $n ]] && continue
                        tmp_for_other="$tmp_for_other@\${$config_name_my$n}"
                    done
                    echo "$config_name_for_other$j=\"$tmp_for_other\"" | perl -pe "s|($config_name_for_other\d+=\")@|\1|"
                done
                ;;

            *) ## 按编号优先
                for ((m = 0; m < ${#pt_pin[*]}; m++)); do
                    tmp_for_other=""
                    j=$((m + 1))
                    for ((n = 0; n < ${#pt_pin[*]}; n++)); do
                        [[ $m -eq $n ]] && continue
                        k=$((n + 1))
                        tmp_for_other="$tmp_for_other@\${$config_name_my$k}"
                    done
                    echo "$config_name_for_other$j=\"$tmp_for_other\"" | perl -pe "s|($config_name_for_other\d+=\")@|\1|"
                done
                ;;
            esac
        fi
    else
        echo "## 未运行过 $task_name.js 脚本，未产生日志"
    fi
}

## 汇总输出
export_all_codes() {
    gen_pt_pin_array
    echo -e "\n# 从日志提取互助码，编号和配置文件中Cookie编号完全对应，如果为空就是所有日志中都没有。\n\n# 即使某个MyXxx变量未赋值，也可以将其变量名填在ForOtherXxx中，jtask脚本会自动过滤空值。\n"
    echo -n "# 你选择的互助码模板为："
    case $HelpType in
    0)
        echo "所有账号助力码全部一致。"
        ;;
    1)
        echo "所有账号机会均等助力。"
        ;;
    2)
        echo "本套脚本内账号间随机顺序助力。"
        ;;
    *)
        echo "按账号编号优先。"
        ;;
    esac
    for ((i = 0; i < ${#name_js[*]}; i++)); do
        echo -e "\n## ${name_chinese[i]}："
        export_codes_sub "${name_js[i]}" "${name_config[i]}" "${name_chinese[i]}"
    done
}

## 执行并写入日志
log_time=$(date "+%Y-%m-%d-%H-%M-%S")
log_path="$dir_code/$log_time.log"
make_dir "$dir_code"
export_all_codes | perl -pe "{s|京东种豆|种豆|; s|crazyJoy任务|疯狂的JOY|}" | tee $log_path

echo "#!/usr/bin/env bash" > /ql/config/task_before.sh
cat "/ql/log/code/"`ls -lt /ql/log/code | grep ".log" | head -n 1 |awk '{print $9}'` >> /ql/config/task_before.sh
cat "/ql/config/task_before_template.sh" >> /ql/config/task_before.sh
