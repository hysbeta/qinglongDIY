#!/usr/bin/env bash

# 从日志提取互助码，编号和配置文件中Cookie编号完全对应，如果为空就是所有日志中都没有。

# 即使某个MyXxx变量未赋值，也可以将其变量名填在ForOtherXxx中，jtask脚本会自动过滤空值。

# 你选择的互助码模板为：按账号编号优先。

## 东东农场：
MyFruit1='8ae43e0cd40a496493c6ce57ec9141c7'
MyFruit2='5bb2e00837db46d7874e3ec0fe739327'
MyFruit3='2fe2a3a5a6a143e78facbf8b434c07c6'
MyFruit4='ea5aa8ef12ca48b1916a3a9726444e23'
MyFruit5='20e9f6eebd7044d293eee3a12b8d5ac9'
MyFruit6='ae8198e89d9946ac8a79591836bdfaa6'
MyFruit7='5a635915ab5b43658186c4440b55a219'
MyFruit8='e20c144af4f94021a2b6d35b12af71ba'
MyFruit9='bd6cf4061ff24bb38085d4fe2052ebf7'
MyFruit10='0d5b5944ef2c46e0a73eba34e998b809'
MyFruit11='41e36f8325a441c69a25015c33f83966'
MyFruit12='b180d5efddcc4703a1efbde4f4490176'
MyFruit13='4a0cfb4cca474be7bb0c7b12aebd9ecf'
MyFruit14='85c7af2445a449ec975fc474a469b505'
MyFruit15='f942d55426154339b42db2c8edc7d326'
MyFruit16=''
MyFruit17='dc96adc30a304bfe8468bec65d774fa2'
MyFruit18='ecc0420e92b449a5858569bd43d9ddd7'

ForOtherFruit1="${MyFruit2}@${MyFruit3}@${MyFruit4}@${MyFruit5}@${MyFruit6}@${MyFruit7}@${MyFruit8}@${MyFruit9}@${MyFruit10}@${MyFruit11}@${MyFruit12}@${MyFruit13}@${MyFruit14}@${MyFruit15}@${MyFruit16}@${MyFruit17}@${MyFruit18}"
ForOtherFruit2="${MyFruit1}@${MyFruit3}@${MyFruit4}@${MyFruit5}@${MyFruit6}@${MyFruit7}@${MyFruit8}@${MyFruit9}@${MyFruit10}@${MyFruit11}@${MyFruit12}@${MyFruit13}@${MyFruit14}@${MyFruit15}@${MyFruit16}@${MyFruit17}@${MyFruit18}"
ForOtherFruit3="${MyFruit1}@${MyFruit2}@${MyFruit4}@${MyFruit5}@${MyFruit6}@${MyFruit7}@${MyFruit8}@${MyFruit9}@${MyFruit10}@${MyFruit11}@${MyFruit12}@${MyFruit13}@${MyFruit14}@${MyFruit15}@${MyFruit16}@${MyFruit17}@${MyFruit18}"
ForOtherFruit4="${MyFruit1}@${MyFruit2}@${MyFruit3}@${MyFruit5}@${MyFruit6}@${MyFruit7}@${MyFruit8}@${MyFruit9}@${MyFruit10}@${MyFruit11}@${MyFruit12}@${MyFruit13}@${MyFruit14}@${MyFruit15}@${MyFruit16}@${MyFruit17}@${MyFruit18}"
ForOtherFruit5="${MyFruit1}@${MyFruit2}@${MyFruit3}@${MyFruit4}@${MyFruit6}@${MyFruit7}@${MyFruit8}@${MyFruit9}@${MyFruit10}@${MyFruit11}@${MyFruit12}@${MyFruit13}@${MyFruit14}@${MyFruit15}@${MyFruit16}@${MyFruit17}@${MyFruit18}"
ForOtherFruit6="${MyFruit1}@${MyFruit2}@${MyFruit3}@${MyFruit4}@${MyFruit5}@${MyFruit7}@${MyFruit8}@${MyFruit9}@${MyFruit10}@${MyFruit11}@${MyFruit12}@${MyFruit13}@${MyFruit14}@${MyFruit15}@${MyFruit16}@${MyFruit17}@${MyFruit18}"
ForOtherFruit7="${MyFruit1}@${MyFruit2}@${MyFruit3}@${MyFruit4}@${MyFruit5}@${MyFruit6}@${MyFruit8}@${MyFruit9}@${MyFruit10}@${MyFruit11}@${MyFruit12}@${MyFruit13}@${MyFruit14}@${MyFruit15}@${MyFruit16}@${MyFruit17}@${MyFruit18}"
ForOtherFruit8="${MyFruit1}@${MyFruit2}@${MyFruit3}@${MyFruit4}@${MyFruit5}@${MyFruit6}@${MyFruit7}@${MyFruit9}@${MyFruit10}@${MyFruit11}@${MyFruit12}@${MyFruit13}@${MyFruit14}@${MyFruit15}@${MyFruit16}@${MyFruit17}@${MyFruit18}"
ForOtherFruit9="${MyFruit1}@${MyFruit2}@${MyFruit3}@${MyFruit4}@${MyFruit5}@${MyFruit6}@${MyFruit7}@${MyFruit8}@${MyFruit10}@${MyFruit11}@${MyFruit12}@${MyFruit13}@${MyFruit14}@${MyFruit15}@${MyFruit16}@${MyFruit17}@${MyFruit18}"
ForOtherFruit10="${MyFruit1}@${MyFruit2}@${MyFruit3}@${MyFruit4}@${MyFruit5}@${MyFruit6}@${MyFruit7}@${MyFruit8}@${MyFruit9}@${MyFruit11}@${MyFruit12}@${MyFruit13}@${MyFruit14}@${MyFruit15}@${MyFruit16}@${MyFruit17}@${MyFruit18}"
ForOtherFruit11="${MyFruit1}@${MyFruit2}@${MyFruit3}@${MyFruit4}@${MyFruit5}@${MyFruit6}@${MyFruit7}@${MyFruit8}@${MyFruit9}@${MyFruit10}@${MyFruit12}@${MyFruit13}@${MyFruit14}@${MyFruit15}@${MyFruit16}@${MyFruit17}@${MyFruit18}"
ForOtherFruit12="${MyFruit1}@${MyFruit2}@${MyFruit3}@${MyFruit4}@${MyFruit5}@${MyFruit6}@${MyFruit7}@${MyFruit8}@${MyFruit9}@${MyFruit10}@${MyFruit11}@${MyFruit13}@${MyFruit14}@${MyFruit15}@${MyFruit16}@${MyFruit17}@${MyFruit18}"
ForOtherFruit13="${MyFruit1}@${MyFruit2}@${MyFruit3}@${MyFruit4}@${MyFruit5}@${MyFruit6}@${MyFruit7}@${MyFruit8}@${MyFruit9}@${MyFruit10}@${MyFruit11}@${MyFruit12}@${MyFruit14}@${MyFruit15}@${MyFruit16}@${MyFruit17}@${MyFruit18}"
ForOtherFruit14="${MyFruit1}@${MyFruit2}@${MyFruit3}@${MyFruit4}@${MyFruit5}@${MyFruit6}@${MyFruit7}@${MyFruit8}@${MyFruit9}@${MyFruit10}@${MyFruit11}@${MyFruit12}@${MyFruit13}@${MyFruit15}@${MyFruit16}@${MyFruit17}@${MyFruit18}"
ForOtherFruit15="${MyFruit1}@${MyFruit2}@${MyFruit3}@${MyFruit4}@${MyFruit5}@${MyFruit6}@${MyFruit7}@${MyFruit8}@${MyFruit9}@${MyFruit10}@${MyFruit11}@${MyFruit12}@${MyFruit13}@${MyFruit14}@${MyFruit16}@${MyFruit17}@${MyFruit18}"
ForOtherFruit16="${MyFruit1}@${MyFruit2}@${MyFruit3}@${MyFruit4}@${MyFruit5}@${MyFruit6}@${MyFruit7}@${MyFruit8}@${MyFruit9}@${MyFruit10}@${MyFruit11}@${MyFruit12}@${MyFruit13}@${MyFruit14}@${MyFruit15}@${MyFruit17}@${MyFruit18}"
ForOtherFruit17="${MyFruit1}@${MyFruit2}@${MyFruit3}@${MyFruit4}@${MyFruit5}@${MyFruit6}@${MyFruit7}@${MyFruit8}@${MyFruit9}@${MyFruit10}@${MyFruit11}@${MyFruit12}@${MyFruit13}@${MyFruit14}@${MyFruit15}@${MyFruit16}@${MyFruit18}"
ForOtherFruit18="${MyFruit1}@${MyFruit2}@${MyFruit3}@${MyFruit4}@${MyFruit5}@${MyFruit6}@${MyFruit7}@${MyFruit8}@${MyFruit9}@${MyFruit10}@${MyFruit11}@${MyFruit12}@${MyFruit13}@${MyFruit14}@${MyFruit15}@${MyFruit16}@${MyFruit17}"

## 东东萌宠：
MyPet1='MTAxODc2NTE0NzAwMDAwMDAxMjgzMTI4NQ=='
MyPet2='MTAxODc2NTE0NzAwMDAwMDAzMjQ3NDUyNQ=='
MyPet3='MTAxODc2NTEzNDAwMDAwMDAxMDgzMjA2OQ=='
MyPet4='MTAxODc2NTEzMzAwMDAwMDAwNzc0MDY0OQ=='
MyPet5='MTE1NDQ5OTUwMDAwMDAwNDY5NDA2NTM='
MyPet6='MTE1NDQ5OTIwMDAwMDAwNDY5NDAxNjk='
MyPet7='MTAxODc2NTEzMDAwMDAwMDAwODY4OTAwMQ=='
MyPet8='MTE0MDE2NjI5MDAwMDAwMDQ3MzU5NjMz'
MyPet9=''
MyPet10=''
MyPet11='MTAxODc2NTEzMTAwMDAwMDAwMDI3ODgzNw=='
MyPet12='MTE0MDQ3MzEwMDAwMDAwNDczNDk5NTM='
MyPet13='MTE1NDUwMTI0MDAwMDAwMDQyODk2NTMx'
MyPet14=''
MyPet15='MTE1NDAxNzgwMDAwMDAwNDM3NzI5Mzk='
MyPet16=''
MyPet17='MTE1NDUyMjEwMDAwMDAwNDM4NzU1MTU='
MyPet18='MTEyNjkzMjAwMDAwMDAwMDQ5NTU2NDIx'

ForOtherPet1="${MyPet2}@${MyPet3}@${MyPet4}@${MyPet5}@${MyPet6}@${MyPet7}@${MyPet8}@${MyPet9}@${MyPet10}@${MyPet11}@${MyPet12}@${MyPet13}@${MyPet14}@${MyPet15}@${MyPet16}@${MyPet17}@${MyPet18}"
ForOtherPet2="${MyPet1}@${MyPet3}@${MyPet4}@${MyPet5}@${MyPet6}@${MyPet7}@${MyPet8}@${MyPet9}@${MyPet10}@${MyPet11}@${MyPet12}@${MyPet13}@${MyPet14}@${MyPet15}@${MyPet16}@${MyPet17}@${MyPet18}"
ForOtherPet3="${MyPet1}@${MyPet2}@${MyPet4}@${MyPet5}@${MyPet6}@${MyPet7}@${MyPet8}@${MyPet9}@${MyPet10}@${MyPet11}@${MyPet12}@${MyPet13}@${MyPet14}@${MyPet15}@${MyPet16}@${MyPet17}@${MyPet18}"
ForOtherPet4="${MyPet1}@${MyPet2}@${MyPet3}@${MyPet5}@${MyPet6}@${MyPet7}@${MyPet8}@${MyPet9}@${MyPet10}@${MyPet11}@${MyPet12}@${MyPet13}@${MyPet14}@${MyPet15}@${MyPet16}@${MyPet17}@${MyPet18}"
ForOtherPet5="${MyPet1}@${MyPet2}@${MyPet3}@${MyPet4}@${MyPet6}@${MyPet7}@${MyPet8}@${MyPet9}@${MyPet10}@${MyPet11}@${MyPet12}@${MyPet13}@${MyPet14}@${MyPet15}@${MyPet16}@${MyPet17}@${MyPet18}"
ForOtherPet6="${MyPet1}@${MyPet2}@${MyPet3}@${MyPet4}@${MyPet5}@${MyPet7}@${MyPet8}@${MyPet9}@${MyPet10}@${MyPet11}@${MyPet12}@${MyPet13}@${MyPet14}@${MyPet15}@${MyPet16}@${MyPet17}@${MyPet18}"
ForOtherPet7="${MyPet1}@${MyPet2}@${MyPet3}@${MyPet4}@${MyPet5}@${MyPet6}@${MyPet8}@${MyPet9}@${MyPet10}@${MyPet11}@${MyPet12}@${MyPet13}@${MyPet14}@${MyPet15}@${MyPet16}@${MyPet17}@${MyPet18}"
ForOtherPet8="${MyPet1}@${MyPet2}@${MyPet3}@${MyPet4}@${MyPet5}@${MyPet6}@${MyPet7}@${MyPet9}@${MyPet10}@${MyPet11}@${MyPet12}@${MyPet13}@${MyPet14}@${MyPet15}@${MyPet16}@${MyPet17}@${MyPet18}"
ForOtherPet9="${MyPet1}@${MyPet2}@${MyPet3}@${MyPet4}@${MyPet5}@${MyPet6}@${MyPet7}@${MyPet8}@${MyPet10}@${MyPet11}@${MyPet12}@${MyPet13}@${MyPet14}@${MyPet15}@${MyPet16}@${MyPet17}@${MyPet18}"
ForOtherPet10="${MyPet1}@${MyPet2}@${MyPet3}@${MyPet4}@${MyPet5}@${MyPet6}@${MyPet7}@${MyPet8}@${MyPet9}@${MyPet11}@${MyPet12}@${MyPet13}@${MyPet14}@${MyPet15}@${MyPet16}@${MyPet17}@${MyPet18}"
ForOtherPet11="${MyPet1}@${MyPet2}@${MyPet3}@${MyPet4}@${MyPet5}@${MyPet6}@${MyPet7}@${MyPet8}@${MyPet9}@${MyPet10}@${MyPet12}@${MyPet13}@${MyPet14}@${MyPet15}@${MyPet16}@${MyPet17}@${MyPet18}"
ForOtherPet12="${MyPet1}@${MyPet2}@${MyPet3}@${MyPet4}@${MyPet5}@${MyPet6}@${MyPet7}@${MyPet8}@${MyPet9}@${MyPet10}@${MyPet11}@${MyPet13}@${MyPet14}@${MyPet15}@${MyPet16}@${MyPet17}@${MyPet18}"
ForOtherPet13="${MyPet1}@${MyPet2}@${MyPet3}@${MyPet4}@${MyPet5}@${MyPet6}@${MyPet7}@${MyPet8}@${MyPet9}@${MyPet10}@${MyPet11}@${MyPet12}@${MyPet14}@${MyPet15}@${MyPet16}@${MyPet17}@${MyPet18}"
ForOtherPet14="${MyPet1}@${MyPet2}@${MyPet3}@${MyPet4}@${MyPet5}@${MyPet6}@${MyPet7}@${MyPet8}@${MyPet9}@${MyPet10}@${MyPet11}@${MyPet12}@${MyPet13}@${MyPet15}@${MyPet16}@${MyPet17}@${MyPet18}"
ForOtherPet15="${MyPet1}@${MyPet2}@${MyPet3}@${MyPet4}@${MyPet5}@${MyPet6}@${MyPet7}@${MyPet8}@${MyPet9}@${MyPet10}@${MyPet11}@${MyPet12}@${MyPet13}@${MyPet14}@${MyPet16}@${MyPet17}@${MyPet18}"
ForOtherPet16="${MyPet1}@${MyPet2}@${MyPet3}@${MyPet4}@${MyPet5}@${MyPet6}@${MyPet7}@${MyPet8}@${MyPet9}@${MyPet10}@${MyPet11}@${MyPet12}@${MyPet13}@${MyPet14}@${MyPet15}@${MyPet17}@${MyPet18}"
ForOtherPet17="${MyPet1}@${MyPet2}@${MyPet3}@${MyPet4}@${MyPet5}@${MyPet6}@${MyPet7}@${MyPet8}@${MyPet9}@${MyPet10}@${MyPet11}@${MyPet12}@${MyPet13}@${MyPet14}@${MyPet15}@${MyPet16}@${MyPet18}"
ForOtherPet18="${MyPet1}@${MyPet2}@${MyPet3}@${MyPet4}@${MyPet5}@${MyPet6}@${MyPet7}@${MyPet8}@${MyPet9}@${MyPet10}@${MyPet11}@${MyPet12}@${MyPet13}@${MyPet14}@${MyPet15}@${MyPet16}@${MyPet17}"

## 种豆得豆：
MyBean1='yjn6d26ldestoxg3rmtu6yv6lfbfrkuruvbvzga'
MyBean2='olmijoxgmjutyn5a6rye7nsmtsqcpeoozxlnkkq'
MyBean3='l4ex6vx6yynovfqho6rqgjbc3zmywkbexmrpyxq'
MyBean4='e7lhibzb3zek26u6kcl2yrhewc3wcpubtcw2hki'
MyBean5='l4ex6vx6yynou6rp4rriohdpodbrl3yz7ls7loy'
MyBean6='olmijoxgmjutz6mgmwqtl26727ssvdclwpngsoa'
MyBean7='4npkonnsy7xi2lbxehydwhfwdxtqoa4ktt34ejy'
MyBean8='e7lhibzb3zek243pedpa7kq4erwq4xszcatauri'
MyBean9='rj7s6mzlk7uogvyqhrfvszg7dm65nesdgf6fizy'
MyBean10='itplnhngh2a7fxh55r5qaopopyhaavylmtlctdq'
MyBean11='bwfgduzucmg52fu6njaxkekq2y'
MyBean12='nacaxzok2js3z6hdw7i2hiovee'
MyBean13='n4fxlkuq5snuitj6d7jroymaiy'
MyBean14='jmqcma5vuf2ih2aemy2mjlakyq3h7wlwy7o5jii'
MyBean15='4npkonnsy7xi25g3bjnmg5y23a6fweex5spjr2y'
MyBean16='o7eiltak46s2w3u3z5ct3lg2d6vy5oq5dssxjta'
MyBean17='qphqjlhupk4nxjjgytwfh43cn4'
MyBean18='23lu7skrcdaxbqrdfuorwejiey'

ForOtherBean1="${MyBean2}@${MyBean3}@${MyBean4}@${MyBean5}@${MyBean6}@${MyBean7}@${MyBean8}@${MyBean9}@${MyBean10}@${MyBean11}@${MyBean12}@${MyBean13}@${MyBean14}@${MyBean15}@${MyBean16}@${MyBean17}@${MyBean18}"
ForOtherBean2="${MyBean1}@${MyBean3}@${MyBean4}@${MyBean5}@${MyBean6}@${MyBean7}@${MyBean8}@${MyBean9}@${MyBean10}@${MyBean11}@${MyBean12}@${MyBean13}@${MyBean14}@${MyBean15}@${MyBean16}@${MyBean17}@${MyBean18}"
ForOtherBean3="${MyBean1}@${MyBean2}@${MyBean4}@${MyBean5}@${MyBean6}@${MyBean7}@${MyBean8}@${MyBean9}@${MyBean10}@${MyBean11}@${MyBean12}@${MyBean13}@${MyBean14}@${MyBean15}@${MyBean16}@${MyBean17}@${MyBean18}"
ForOtherBean4="${MyBean1}@${MyBean2}@${MyBean3}@${MyBean5}@${MyBean6}@${MyBean7}@${MyBean8}@${MyBean9}@${MyBean10}@${MyBean11}@${MyBean12}@${MyBean13}@${MyBean14}@${MyBean15}@${MyBean16}@${MyBean17}@${MyBean18}"
ForOtherBean5="${MyBean1}@${MyBean2}@${MyBean3}@${MyBean4}@${MyBean6}@${MyBean7}@${MyBean8}@${MyBean9}@${MyBean10}@${MyBean11}@${MyBean12}@${MyBean13}@${MyBean14}@${MyBean15}@${MyBean16}@${MyBean17}@${MyBean18}"
ForOtherBean6="${MyBean1}@${MyBean2}@${MyBean3}@${MyBean4}@${MyBean5}@${MyBean7}@${MyBean8}@${MyBean9}@${MyBean10}@${MyBean11}@${MyBean12}@${MyBean13}@${MyBean14}@${MyBean15}@${MyBean16}@${MyBean17}@${MyBean18}"
ForOtherBean7="${MyBean1}@${MyBean2}@${MyBean3}@${MyBean4}@${MyBean5}@${MyBean6}@${MyBean8}@${MyBean9}@${MyBean10}@${MyBean11}@${MyBean12}@${MyBean13}@${MyBean14}@${MyBean15}@${MyBean16}@${MyBean17}@${MyBean18}"
ForOtherBean8="${MyBean1}@${MyBean2}@${MyBean3}@${MyBean4}@${MyBean5}@${MyBean6}@${MyBean7}@${MyBean9}@${MyBean10}@${MyBean11}@${MyBean12}@${MyBean13}@${MyBean14}@${MyBean15}@${MyBean16}@${MyBean17}@${MyBean18}"
ForOtherBean9="${MyBean1}@${MyBean2}@${MyBean3}@${MyBean4}@${MyBean5}@${MyBean6}@${MyBean7}@${MyBean8}@${MyBean10}@${MyBean11}@${MyBean12}@${MyBean13}@${MyBean14}@${MyBean15}@${MyBean16}@${MyBean17}@${MyBean18}"
ForOtherBean10="${MyBean1}@${MyBean2}@${MyBean3}@${MyBean4}@${MyBean5}@${MyBean6}@${MyBean7}@${MyBean8}@${MyBean9}@${MyBean11}@${MyBean12}@${MyBean13}@${MyBean14}@${MyBean15}@${MyBean16}@${MyBean17}@${MyBean18}"
ForOtherBean11="${MyBean1}@${MyBean2}@${MyBean3}@${MyBean4}@${MyBean5}@${MyBean6}@${MyBean7}@${MyBean8}@${MyBean9}@${MyBean10}@${MyBean12}@${MyBean13}@${MyBean14}@${MyBean15}@${MyBean16}@${MyBean17}@${MyBean18}"
ForOtherBean12="${MyBean1}@${MyBean2}@${MyBean3}@${MyBean4}@${MyBean5}@${MyBean6}@${MyBean7}@${MyBean8}@${MyBean9}@${MyBean10}@${MyBean11}@${MyBean13}@${MyBean14}@${MyBean15}@${MyBean16}@${MyBean17}@${MyBean18}"
ForOtherBean13="${MyBean1}@${MyBean2}@${MyBean3}@${MyBean4}@${MyBean5}@${MyBean6}@${MyBean7}@${MyBean8}@${MyBean9}@${MyBean10}@${MyBean11}@${MyBean12}@${MyBean14}@${MyBean15}@${MyBean16}@${MyBean17}@${MyBean18}"
ForOtherBean14="${MyBean1}@${MyBean2}@${MyBean3}@${MyBean4}@${MyBean5}@${MyBean6}@${MyBean7}@${MyBean8}@${MyBean9}@${MyBean10}@${MyBean11}@${MyBean12}@${MyBean13}@${MyBean15}@${MyBean16}@${MyBean17}@${MyBean18}"
ForOtherBean15="${MyBean1}@${MyBean2}@${MyBean3}@${MyBean4}@${MyBean5}@${MyBean6}@${MyBean7}@${MyBean8}@${MyBean9}@${MyBean10}@${MyBean11}@${MyBean12}@${MyBean13}@${MyBean14}@${MyBean16}@${MyBean17}@${MyBean18}"
ForOtherBean16="${MyBean1}@${MyBean2}@${MyBean3}@${MyBean4}@${MyBean5}@${MyBean6}@${MyBean7}@${MyBean8}@${MyBean9}@${MyBean10}@${MyBean11}@${MyBean12}@${MyBean13}@${MyBean14}@${MyBean15}@${MyBean17}@${MyBean18}"
ForOtherBean17="${MyBean1}@${MyBean2}@${MyBean3}@${MyBean4}@${MyBean5}@${MyBean6}@${MyBean7}@${MyBean8}@${MyBean9}@${MyBean10}@${MyBean11}@${MyBean12}@${MyBean13}@${MyBean14}@${MyBean15}@${MyBean16}@${MyBean18}"
ForOtherBean18="${MyBean1}@${MyBean2}@${MyBean3}@${MyBean4}@${MyBean5}@${MyBean6}@${MyBean7}@${MyBean8}@${MyBean9}@${MyBean10}@${MyBean11}@${MyBean12}@${MyBean13}@${MyBean14}@${MyBean15}@${MyBean16}@${MyBean17}"

## 京喜工厂：
MyDreamFactory1='XrvVpm-Jw1LWkW-3xeDSIGvUm3ecvF7y9fYF-vyqX4c='
MyDreamFactory2='aKbw7n4yF9YqMP73-6_-FA=='
MyDreamFactory3='YlZIW9ejWo7zLY0DmkIenQ=='
MyDreamFactory4='F-obkPA8iy-cMV5p3DRhIg=='
MyDreamFactory5='EOvmyTDtrSSdGffl4TxCKQ=='
MyDreamFactory6='XXRDd_4aH3II7TLm9_Y9RQ=='
MyDreamFactory7='JV86dcxipr7tjp04HMquWg=='
MyDreamFactory8='TzW51kHjKUvoBw3cQjCE-w=='
MyDreamFactory9=''
MyDreamFactory10=''
MyDreamFactory11='B3TEmQ9HkYYRaCTmHFtCEQ=='
MyDreamFactory12='DY5Ou4BVeePG9T7W3Tn8Kg=='
MyDreamFactory13='hwC9JN5sFl2bdp5oANP1OA=='
MyDreamFactory14=''
MyDreamFactory15='FgyB1hNcOHfkF6AaTLP1Lg=='
MyDreamFactory16=''
MyDreamFactory17='6VYeBL03QxQL06axnsa0GA=='
MyDreamFactory18=''

ForOtherDreamFactory1="${MyDreamFactory2}@${MyDreamFactory3}@${MyDreamFactory4}@${MyDreamFactory5}@${MyDreamFactory6}@${MyDreamFactory7}@${MyDreamFactory8}@${MyDreamFactory9}@${MyDreamFactory10}@${MyDreamFactory11}@${MyDreamFactory12}@${MyDreamFactory13}@${MyDreamFactory14}@${MyDreamFactory15}@${MyDreamFactory16}@${MyDreamFactory17}@${MyDreamFactory18}"
ForOtherDreamFactory2="${MyDreamFactory1}@${MyDreamFactory3}@${MyDreamFactory4}@${MyDreamFactory5}@${MyDreamFactory6}@${MyDreamFactory7}@${MyDreamFactory8}@${MyDreamFactory9}@${MyDreamFactory10}@${MyDreamFactory11}@${MyDreamFactory12}@${MyDreamFactory13}@${MyDreamFactory14}@${MyDreamFactory15}@${MyDreamFactory16}@${MyDreamFactory17}@${MyDreamFactory18}"
ForOtherDreamFactory3="${MyDreamFactory1}@${MyDreamFactory2}@${MyDreamFactory4}@${MyDreamFactory5}@${MyDreamFactory6}@${MyDreamFactory7}@${MyDreamFactory8}@${MyDreamFactory9}@${MyDreamFactory10}@${MyDreamFactory11}@${MyDreamFactory12}@${MyDreamFactory13}@${MyDreamFactory14}@${MyDreamFactory15}@${MyDreamFactory16}@${MyDreamFactory17}@${MyDreamFactory18}"
ForOtherDreamFactory4="${MyDreamFactory1}@${MyDreamFactory2}@${MyDreamFactory3}@${MyDreamFactory5}@${MyDreamFactory6}@${MyDreamFactory7}@${MyDreamFactory8}@${MyDreamFactory9}@${MyDreamFactory10}@${MyDreamFactory11}@${MyDreamFactory12}@${MyDreamFactory13}@${MyDreamFactory14}@${MyDreamFactory15}@${MyDreamFactory16}@${MyDreamFactory17}@${MyDreamFactory18}"
ForOtherDreamFactory5="${MyDreamFactory1}@${MyDreamFactory2}@${MyDreamFactory3}@${MyDreamFactory4}@${MyDreamFactory6}@${MyDreamFactory7}@${MyDreamFactory8}@${MyDreamFactory9}@${MyDreamFactory10}@${MyDreamFactory11}@${MyDreamFactory12}@${MyDreamFactory13}@${MyDreamFactory14}@${MyDreamFactory15}@${MyDreamFactory16}@${MyDreamFactory17}@${MyDreamFactory18}"
ForOtherDreamFactory6="${MyDreamFactory1}@${MyDreamFactory2}@${MyDreamFactory3}@${MyDreamFactory4}@${MyDreamFactory5}@${MyDreamFactory7}@${MyDreamFactory8}@${MyDreamFactory9}@${MyDreamFactory10}@${MyDreamFactory11}@${MyDreamFactory12}@${MyDreamFactory13}@${MyDreamFactory14}@${MyDreamFactory15}@${MyDreamFactory16}@${MyDreamFactory17}@${MyDreamFactory18}"
ForOtherDreamFactory7="${MyDreamFactory1}@${MyDreamFactory2}@${MyDreamFactory3}@${MyDreamFactory4}@${MyDreamFactory5}@${MyDreamFactory6}@${MyDreamFactory8}@${MyDreamFactory9}@${MyDreamFactory10}@${MyDreamFactory11}@${MyDreamFactory12}@${MyDreamFactory13}@${MyDreamFactory14}@${MyDreamFactory15}@${MyDreamFactory16}@${MyDreamFactory17}@${MyDreamFactory18}"
ForOtherDreamFactory8="${MyDreamFactory1}@${MyDreamFactory2}@${MyDreamFactory3}@${MyDreamFactory4}@${MyDreamFactory5}@${MyDreamFactory6}@${MyDreamFactory7}@${MyDreamFactory9}@${MyDreamFactory10}@${MyDreamFactory11}@${MyDreamFactory12}@${MyDreamFactory13}@${MyDreamFactory14}@${MyDreamFactory15}@${MyDreamFactory16}@${MyDreamFactory17}@${MyDreamFactory18}"
ForOtherDreamFactory9="${MyDreamFactory1}@${MyDreamFactory2}@${MyDreamFactory3}@${MyDreamFactory4}@${MyDreamFactory5}@${MyDreamFactory6}@${MyDreamFactory7}@${MyDreamFactory8}@${MyDreamFactory10}@${MyDreamFactory11}@${MyDreamFactory12}@${MyDreamFactory13}@${MyDreamFactory14}@${MyDreamFactory15}@${MyDreamFactory16}@${MyDreamFactory17}@${MyDreamFactory18}"
ForOtherDreamFactory10="${MyDreamFactory1}@${MyDreamFactory2}@${MyDreamFactory3}@${MyDreamFactory4}@${MyDreamFactory5}@${MyDreamFactory6}@${MyDreamFactory7}@${MyDreamFactory8}@${MyDreamFactory9}@${MyDreamFactory11}@${MyDreamFactory12}@${MyDreamFactory13}@${MyDreamFactory14}@${MyDreamFactory15}@${MyDreamFactory16}@${MyDreamFactory17}@${MyDreamFactory18}"
ForOtherDreamFactory11="${MyDreamFactory1}@${MyDreamFactory2}@${MyDreamFactory3}@${MyDreamFactory4}@${MyDreamFactory5}@${MyDreamFactory6}@${MyDreamFactory7}@${MyDreamFactory8}@${MyDreamFactory9}@${MyDreamFactory10}@${MyDreamFactory12}@${MyDreamFactory13}@${MyDreamFactory14}@${MyDreamFactory15}@${MyDreamFactory16}@${MyDreamFactory17}@${MyDreamFactory18}"
ForOtherDreamFactory12="${MyDreamFactory1}@${MyDreamFactory2}@${MyDreamFactory3}@${MyDreamFactory4}@${MyDreamFactory5}@${MyDreamFactory6}@${MyDreamFactory7}@${MyDreamFactory8}@${MyDreamFactory9}@${MyDreamFactory10}@${MyDreamFactory11}@${MyDreamFactory13}@${MyDreamFactory14}@${MyDreamFactory15}@${MyDreamFactory16}@${MyDreamFactory17}@${MyDreamFactory18}"
ForOtherDreamFactory13="${MyDreamFactory1}@${MyDreamFactory2}@${MyDreamFactory3}@${MyDreamFactory4}@${MyDreamFactory5}@${MyDreamFactory6}@${MyDreamFactory7}@${MyDreamFactory8}@${MyDreamFactory9}@${MyDreamFactory10}@${MyDreamFactory11}@${MyDreamFactory12}@${MyDreamFactory14}@${MyDreamFactory15}@${MyDreamFactory16}@${MyDreamFactory17}@${MyDreamFactory18}"
ForOtherDreamFactory14="${MyDreamFactory1}@${MyDreamFactory2}@${MyDreamFactory3}@${MyDreamFactory4}@${MyDreamFactory5}@${MyDreamFactory6}@${MyDreamFactory7}@${MyDreamFactory8}@${MyDreamFactory9}@${MyDreamFactory10}@${MyDreamFactory11}@${MyDreamFactory12}@${MyDreamFactory13}@${MyDreamFactory15}@${MyDreamFactory16}@${MyDreamFactory17}@${MyDreamFactory18}"
ForOtherDreamFactory15="${MyDreamFactory1}@${MyDreamFactory2}@${MyDreamFactory3}@${MyDreamFactory4}@${MyDreamFactory5}@${MyDreamFactory6}@${MyDreamFactory7}@${MyDreamFactory8}@${MyDreamFactory9}@${MyDreamFactory10}@${MyDreamFactory11}@${MyDreamFactory12}@${MyDreamFactory13}@${MyDreamFactory14}@${MyDreamFactory16}@${MyDreamFactory17}@${MyDreamFactory18}"
ForOtherDreamFactory16="${MyDreamFactory1}@${MyDreamFactory2}@${MyDreamFactory3}@${MyDreamFactory4}@${MyDreamFactory5}@${MyDreamFactory6}@${MyDreamFactory7}@${MyDreamFactory8}@${MyDreamFactory9}@${MyDreamFactory10}@${MyDreamFactory11}@${MyDreamFactory12}@${MyDreamFactory13}@${MyDreamFactory14}@${MyDreamFactory15}@${MyDreamFactory17}@${MyDreamFactory18}"
ForOtherDreamFactory17="${MyDreamFactory1}@${MyDreamFactory2}@${MyDreamFactory3}@${MyDreamFactory4}@${MyDreamFactory5}@${MyDreamFactory6}@${MyDreamFactory7}@${MyDreamFactory8}@${MyDreamFactory9}@${MyDreamFactory10}@${MyDreamFactory11}@${MyDreamFactory12}@${MyDreamFactory13}@${MyDreamFactory14}@${MyDreamFactory15}@${MyDreamFactory16}@${MyDreamFactory18}"
ForOtherDreamFactory18="${MyDreamFactory1}@${MyDreamFactory2}@${MyDreamFactory3}@${MyDreamFactory4}@${MyDreamFactory5}@${MyDreamFactory6}@${MyDreamFactory7}@${MyDreamFactory8}@${MyDreamFactory9}@${MyDreamFactory10}@${MyDreamFactory11}@${MyDreamFactory12}@${MyDreamFactory13}@${MyDreamFactory14}@${MyDreamFactory15}@${MyDreamFactory16}@${MyDreamFactory17}"

## 东东工厂：
MyJdFactory1='T023v_97Rx8R9lHKJxPynfYDd8cCjVWnYaS5kRrbA'
MyJdFactory2='T0225KkcRk0a_QDVcx6glv8PdgCjVWnYaS5kRrbA'
MyJdFactory3='T0205KkcHWlqnDG-cXmH4I9tCjVWnYaS5kRrbA'
MyJdFactory4='T0225KkcRBpI8VGBJhKil_ECfQCjVWnYaS5kRrbA'
MyJdFactory5='T0205KkcHWBtgQyIVXiIwo1gCjVWnYaS5kRrbA'
MyJdFactory6='T0225KkcRh8doFCFJ0nxkaVZJgCjVWnYaS5kRrbA'
MyJdFactory7='T0225KkcR0gY9QHXdh3wl_NZcgCjVWnYaS5kRrbA'
MyJdFactory8='T0225KkcRBhN9QKDIxymnKYLIgCjVWnYaS5kRrbA'
MyJdFactory9='T0205KkcEUteqgegZEeV1J9fCjVWnYaS5kRrbA'
MyJdFactory10=''
MyJdFactory11='T01597goGUJIqFzUKBkCjVWnYaS5kRrbA'
MyJdFactory12='T015a33Mlp6dI99TJRkCjVWnYaS5kRrbA'
MyJdFactory13='T0125ag6Xk0HszuKCjVWnYaS5kRrbA'
MyJdFactory14='T018v_56Qhwe8lPfKROb1ACjVWnYaS5kRrbA'
MyJdFactory15='T0225KkcR00co1aBJRv9l6NffACjVWnYaS5kRrbA'
MyJdFactory16=''
MyJdFactory17='T015vfR1RBgZ9lLUT0cCjVWnYaS5kRrbA'
MyJdFactory18='T0129r42HlcZ8FfWCjVWnYaS5kRrbA'

ForOtherJdFactory1="${MyJdFactory2}@${MyJdFactory3}@${MyJdFactory4}@${MyJdFactory5}@${MyJdFactory6}@${MyJdFactory7}@${MyJdFactory8}@${MyJdFactory9}@${MyJdFactory10}@${MyJdFactory11}@${MyJdFactory12}@${MyJdFactory13}@${MyJdFactory14}@${MyJdFactory15}@${MyJdFactory16}@${MyJdFactory17}@${MyJdFactory18}"
ForOtherJdFactory2="${MyJdFactory1}@${MyJdFactory3}@${MyJdFactory4}@${MyJdFactory5}@${MyJdFactory6}@${MyJdFactory7}@${MyJdFactory8}@${MyJdFactory9}@${MyJdFactory10}@${MyJdFactory11}@${MyJdFactory12}@${MyJdFactory13}@${MyJdFactory14}@${MyJdFactory15}@${MyJdFactory16}@${MyJdFactory17}@${MyJdFactory18}"
ForOtherJdFactory3="${MyJdFactory1}@${MyJdFactory2}@${MyJdFactory4}@${MyJdFactory5}@${MyJdFactory6}@${MyJdFactory7}@${MyJdFactory8}@${MyJdFactory9}@${MyJdFactory10}@${MyJdFactory11}@${MyJdFactory12}@${MyJdFactory13}@${MyJdFactory14}@${MyJdFactory15}@${MyJdFactory16}@${MyJdFactory17}@${MyJdFactory18}"
ForOtherJdFactory4="${MyJdFactory1}@${MyJdFactory2}@${MyJdFactory3}@${MyJdFactory5}@${MyJdFactory6}@${MyJdFactory7}@${MyJdFactory8}@${MyJdFactory9}@${MyJdFactory10}@${MyJdFactory11}@${MyJdFactory12}@${MyJdFactory13}@${MyJdFactory14}@${MyJdFactory15}@${MyJdFactory16}@${MyJdFactory17}@${MyJdFactory18}"
ForOtherJdFactory5="${MyJdFactory1}@${MyJdFactory2}@${MyJdFactory3}@${MyJdFactory4}@${MyJdFactory6}@${MyJdFactory7}@${MyJdFactory8}@${MyJdFactory9}@${MyJdFactory10}@${MyJdFactory11}@${MyJdFactory12}@${MyJdFactory13}@${MyJdFactory14}@${MyJdFactory15}@${MyJdFactory16}@${MyJdFactory17}@${MyJdFactory18}"
ForOtherJdFactory6="${MyJdFactory1}@${MyJdFactory2}@${MyJdFactory3}@${MyJdFactory4}@${MyJdFactory5}@${MyJdFactory7}@${MyJdFactory8}@${MyJdFactory9}@${MyJdFactory10}@${MyJdFactory11}@${MyJdFactory12}@${MyJdFactory13}@${MyJdFactory14}@${MyJdFactory15}@${MyJdFactory16}@${MyJdFactory17}@${MyJdFactory18}"
ForOtherJdFactory7="${MyJdFactory1}@${MyJdFactory2}@${MyJdFactory3}@${MyJdFactory4}@${MyJdFactory5}@${MyJdFactory6}@${MyJdFactory8}@${MyJdFactory9}@${MyJdFactory10}@${MyJdFactory11}@${MyJdFactory12}@${MyJdFactory13}@${MyJdFactory14}@${MyJdFactory15}@${MyJdFactory16}@${MyJdFactory17}@${MyJdFactory18}"
ForOtherJdFactory8="${MyJdFactory1}@${MyJdFactory2}@${MyJdFactory3}@${MyJdFactory4}@${MyJdFactory5}@${MyJdFactory6}@${MyJdFactory7}@${MyJdFactory9}@${MyJdFactory10}@${MyJdFactory11}@${MyJdFactory12}@${MyJdFactory13}@${MyJdFactory14}@${MyJdFactory15}@${MyJdFactory16}@${MyJdFactory17}@${MyJdFactory18}"
ForOtherJdFactory9="${MyJdFactory1}@${MyJdFactory2}@${MyJdFactory3}@${MyJdFactory4}@${MyJdFactory5}@${MyJdFactory6}@${MyJdFactory7}@${MyJdFactory8}@${MyJdFactory10}@${MyJdFactory11}@${MyJdFactory12}@${MyJdFactory13}@${MyJdFactory14}@${MyJdFactory15}@${MyJdFactory16}@${MyJdFactory17}@${MyJdFactory18}"
ForOtherJdFactory10="${MyJdFactory1}@${MyJdFactory2}@${MyJdFactory3}@${MyJdFactory4}@${MyJdFactory5}@${MyJdFactory6}@${MyJdFactory7}@${MyJdFactory8}@${MyJdFactory9}@${MyJdFactory11}@${MyJdFactory12}@${MyJdFactory13}@${MyJdFactory14}@${MyJdFactory15}@${MyJdFactory16}@${MyJdFactory17}@${MyJdFactory18}"
ForOtherJdFactory11="${MyJdFactory1}@${MyJdFactory2}@${MyJdFactory3}@${MyJdFactory4}@${MyJdFactory5}@${MyJdFactory6}@${MyJdFactory7}@${MyJdFactory8}@${MyJdFactory9}@${MyJdFactory10}@${MyJdFactory12}@${MyJdFactory13}@${MyJdFactory14}@${MyJdFactory15}@${MyJdFactory16}@${MyJdFactory17}@${MyJdFactory18}"
ForOtherJdFactory12="${MyJdFactory1}@${MyJdFactory2}@${MyJdFactory3}@${MyJdFactory4}@${MyJdFactory5}@${MyJdFactory6}@${MyJdFactory7}@${MyJdFactory8}@${MyJdFactory9}@${MyJdFactory10}@${MyJdFactory11}@${MyJdFactory13}@${MyJdFactory14}@${MyJdFactory15}@${MyJdFactory16}@${MyJdFactory17}@${MyJdFactory18}"
ForOtherJdFactory13="${MyJdFactory1}@${MyJdFactory2}@${MyJdFactory3}@${MyJdFactory4}@${MyJdFactory5}@${MyJdFactory6}@${MyJdFactory7}@${MyJdFactory8}@${MyJdFactory9}@${MyJdFactory10}@${MyJdFactory11}@${MyJdFactory12}@${MyJdFactory14}@${MyJdFactory15}@${MyJdFactory16}@${MyJdFactory17}@${MyJdFactory18}"
ForOtherJdFactory14="${MyJdFactory1}@${MyJdFactory2}@${MyJdFactory3}@${MyJdFactory4}@${MyJdFactory5}@${MyJdFactory6}@${MyJdFactory7}@${MyJdFactory8}@${MyJdFactory9}@${MyJdFactory10}@${MyJdFactory11}@${MyJdFactory12}@${MyJdFactory13}@${MyJdFactory15}@${MyJdFactory16}@${MyJdFactory17}@${MyJdFactory18}"
ForOtherJdFactory15="${MyJdFactory1}@${MyJdFactory2}@${MyJdFactory3}@${MyJdFactory4}@${MyJdFactory5}@${MyJdFactory6}@${MyJdFactory7}@${MyJdFactory8}@${MyJdFactory9}@${MyJdFactory10}@${MyJdFactory11}@${MyJdFactory12}@${MyJdFactory13}@${MyJdFactory14}@${MyJdFactory16}@${MyJdFactory17}@${MyJdFactory18}"
ForOtherJdFactory16="${MyJdFactory1}@${MyJdFactory2}@${MyJdFactory3}@${MyJdFactory4}@${MyJdFactory5}@${MyJdFactory6}@${MyJdFactory7}@${MyJdFactory8}@${MyJdFactory9}@${MyJdFactory10}@${MyJdFactory11}@${MyJdFactory12}@${MyJdFactory13}@${MyJdFactory14}@${MyJdFactory15}@${MyJdFactory17}@${MyJdFactory18}"
ForOtherJdFactory17="${MyJdFactory1}@${MyJdFactory2}@${MyJdFactory3}@${MyJdFactory4}@${MyJdFactory5}@${MyJdFactory6}@${MyJdFactory7}@${MyJdFactory8}@${MyJdFactory9}@${MyJdFactory10}@${MyJdFactory11}@${MyJdFactory12}@${MyJdFactory13}@${MyJdFactory14}@${MyJdFactory15}@${MyJdFactory16}@${MyJdFactory18}"
ForOtherJdFactory18="${MyJdFactory1}@${MyJdFactory2}@${MyJdFactory3}@${MyJdFactory4}@${MyJdFactory5}@${MyJdFactory6}@${MyJdFactory7}@${MyJdFactory8}@${MyJdFactory9}@${MyJdFactory10}@${MyJdFactory11}@${MyJdFactory12}@${MyJdFactory13}@${MyJdFactory14}@${MyJdFactory15}@${MyJdFactory16}@${MyJdFactory17}"

## 京东赚赚：
## 从日志中未找到任何互助码

## 疯狂的JOY：
MyJoy1='4r5VSwcrEuOo8a7-qaSFVTvMqLmzFwaT'
MyJoy2='hCvXVf3nMluHgHd1ilR-X6t9zd5YaBeE'
MyJoy3='4QfQdJe7dg9qBW7x4KrF1w=='
MyJoy4='Byo8rMmli7V2x9k7gwmfQKt9zd5YaBeE'
MyJoy5='SihXu8XzNrrsTP0vVKheew=='
MyJoy6=''
MyJoy7='0utMK0eoPX0JpOBizGQkPqt9zd5YaBeE'
MyJoy8='uJusvHbvhUAvhvijkJJ9xat9zd5YaBeE'
MyJoy9=''
MyJoy10='EpNpvPO0ewLKtb-WzyXMzw=='
MyJoy11='-za81Vl_eMs-wf5IQX3ZGQ=='
MyJoy12='gElrjc4yd5xFUWt0D6yGNw=='
MyJoy13='szsIdLSqU1uibv_RfGJRQA=='
MyJoy14='hWR6LtR7Ud5Dmzx98uh6_w=='
MyJoy15='MoVmAc9bUuj5fpVZB8NBl6t9zd5YaBeE'
MyJoy16=''
MyJoy17=''
MyJoy18='VQc_KvTflNg7zKi5sxcGkw=='

ForOtherJoy1="${MyJoy2}@${MyJoy3}@${MyJoy4}@${MyJoy5}@${MyJoy6}@${MyJoy7}@${MyJoy8}@${MyJoy9}@${MyJoy10}@${MyJoy11}@${MyJoy12}@${MyJoy13}@${MyJoy14}@${MyJoy15}@${MyJoy16}@${MyJoy17}@${MyJoy18}"
ForOtherJoy2="${MyJoy1}@${MyJoy3}@${MyJoy4}@${MyJoy5}@${MyJoy6}@${MyJoy7}@${MyJoy8}@${MyJoy9}@${MyJoy10}@${MyJoy11}@${MyJoy12}@${MyJoy13}@${MyJoy14}@${MyJoy15}@${MyJoy16}@${MyJoy17}@${MyJoy18}"
ForOtherJoy3="${MyJoy1}@${MyJoy2}@${MyJoy4}@${MyJoy5}@${MyJoy6}@${MyJoy7}@${MyJoy8}@${MyJoy9}@${MyJoy10}@${MyJoy11}@${MyJoy12}@${MyJoy13}@${MyJoy14}@${MyJoy15}@${MyJoy16}@${MyJoy17}@${MyJoy18}"
ForOtherJoy4="${MyJoy1}@${MyJoy2}@${MyJoy3}@${MyJoy5}@${MyJoy6}@${MyJoy7}@${MyJoy8}@${MyJoy9}@${MyJoy10}@${MyJoy11}@${MyJoy12}@${MyJoy13}@${MyJoy14}@${MyJoy15}@${MyJoy16}@${MyJoy17}@${MyJoy18}"
ForOtherJoy5="${MyJoy1}@${MyJoy2}@${MyJoy3}@${MyJoy4}@${MyJoy6}@${MyJoy7}@${MyJoy8}@${MyJoy9}@${MyJoy10}@${MyJoy11}@${MyJoy12}@${MyJoy13}@${MyJoy14}@${MyJoy15}@${MyJoy16}@${MyJoy17}@${MyJoy18}"
ForOtherJoy6="${MyJoy1}@${MyJoy2}@${MyJoy3}@${MyJoy4}@${MyJoy5}@${MyJoy7}@${MyJoy8}@${MyJoy9}@${MyJoy10}@${MyJoy11}@${MyJoy12}@${MyJoy13}@${MyJoy14}@${MyJoy15}@${MyJoy16}@${MyJoy17}@${MyJoy18}"
ForOtherJoy7="${MyJoy1}@${MyJoy2}@${MyJoy3}@${MyJoy4}@${MyJoy5}@${MyJoy6}@${MyJoy8}@${MyJoy9}@${MyJoy10}@${MyJoy11}@${MyJoy12}@${MyJoy13}@${MyJoy14}@${MyJoy15}@${MyJoy16}@${MyJoy17}@${MyJoy18}"
ForOtherJoy8="${MyJoy1}@${MyJoy2}@${MyJoy3}@${MyJoy4}@${MyJoy5}@${MyJoy6}@${MyJoy7}@${MyJoy9}@${MyJoy10}@${MyJoy11}@${MyJoy12}@${MyJoy13}@${MyJoy14}@${MyJoy15}@${MyJoy16}@${MyJoy17}@${MyJoy18}"
ForOtherJoy9="${MyJoy1}@${MyJoy2}@${MyJoy3}@${MyJoy4}@${MyJoy5}@${MyJoy6}@${MyJoy7}@${MyJoy8}@${MyJoy10}@${MyJoy11}@${MyJoy12}@${MyJoy13}@${MyJoy14}@${MyJoy15}@${MyJoy16}@${MyJoy17}@${MyJoy18}"
ForOtherJoy10="${MyJoy1}@${MyJoy2}@${MyJoy3}@${MyJoy4}@${MyJoy5}@${MyJoy6}@${MyJoy7}@${MyJoy8}@${MyJoy9}@${MyJoy11}@${MyJoy12}@${MyJoy13}@${MyJoy14}@${MyJoy15}@${MyJoy16}@${MyJoy17}@${MyJoy18}"
ForOtherJoy11="${MyJoy1}@${MyJoy2}@${MyJoy3}@${MyJoy4}@${MyJoy5}@${MyJoy6}@${MyJoy7}@${MyJoy8}@${MyJoy9}@${MyJoy10}@${MyJoy12}@${MyJoy13}@${MyJoy14}@${MyJoy15}@${MyJoy16}@${MyJoy17}@${MyJoy18}"
ForOtherJoy12="${MyJoy1}@${MyJoy2}@${MyJoy3}@${MyJoy4}@${MyJoy5}@${MyJoy6}@${MyJoy7}@${MyJoy8}@${MyJoy9}@${MyJoy10}@${MyJoy11}@${MyJoy13}@${MyJoy14}@${MyJoy15}@${MyJoy16}@${MyJoy17}@${MyJoy18}"
ForOtherJoy13="${MyJoy1}@${MyJoy2}@${MyJoy3}@${MyJoy4}@${MyJoy5}@${MyJoy6}@${MyJoy7}@${MyJoy8}@${MyJoy9}@${MyJoy10}@${MyJoy11}@${MyJoy12}@${MyJoy14}@${MyJoy15}@${MyJoy16}@${MyJoy17}@${MyJoy18}"
ForOtherJoy14="${MyJoy1}@${MyJoy2}@${MyJoy3}@${MyJoy4}@${MyJoy5}@${MyJoy6}@${MyJoy7}@${MyJoy8}@${MyJoy9}@${MyJoy10}@${MyJoy11}@${MyJoy12}@${MyJoy13}@${MyJoy15}@${MyJoy16}@${MyJoy17}@${MyJoy18}"
ForOtherJoy15="${MyJoy1}@${MyJoy2}@${MyJoy3}@${MyJoy4}@${MyJoy5}@${MyJoy6}@${MyJoy7}@${MyJoy8}@${MyJoy9}@${MyJoy10}@${MyJoy11}@${MyJoy12}@${MyJoy13}@${MyJoy14}@${MyJoy16}@${MyJoy17}@${MyJoy18}"
ForOtherJoy16="${MyJoy1}@${MyJoy2}@${MyJoy3}@${MyJoy4}@${MyJoy5}@${MyJoy6}@${MyJoy7}@${MyJoy8}@${MyJoy9}@${MyJoy10}@${MyJoy11}@${MyJoy12}@${MyJoy13}@${MyJoy14}@${MyJoy15}@${MyJoy17}@${MyJoy18}"
ForOtherJoy17="${MyJoy1}@${MyJoy2}@${MyJoy3}@${MyJoy4}@${MyJoy5}@${MyJoy6}@${MyJoy7}@${MyJoy8}@${MyJoy9}@${MyJoy10}@${MyJoy11}@${MyJoy12}@${MyJoy13}@${MyJoy14}@${MyJoy15}@${MyJoy16}@${MyJoy18}"
ForOtherJoy18="${MyJoy1}@${MyJoy2}@${MyJoy3}@${MyJoy4}@${MyJoy5}@${MyJoy6}@${MyJoy7}@${MyJoy8}@${MyJoy9}@${MyJoy10}@${MyJoy11}@${MyJoy12}@${MyJoy13}@${MyJoy14}@${MyJoy15}@${MyJoy16}@${MyJoy17}"

## 京喜农场：
MyJxnc1='{"smp":"9662a5a44a1de1bab93f88396cf54fa9","active":"jdnc_1_3yuanli210616_2","joinnum":1}'
MyJxnc2='{"smp":"1f998897a1c400fa5d47ef2bfdf7d858","active":"jdnc_1_3yuanli210616_2","joinnum":1}'
MyJxnc3='{"smp":"4bf003044651fe08cbe40c58b9093f0d","active":"jdnc_1_3yuanli210616_2","joinnum":1}'
MyJxnc4='{"smp":"50f7acea65d5b4feb2a19a14bf399a89","active":"jdnc_1_3yuanli210616_2","joinnum":1}'
MyJxnc5='{"smp":"1adbcfdfd8d43168ccb4f09d51b61556","active":"jdnc_1_2yuanguoba210601_2","joinnum":1}'
MyJxnc6='{"smp":"a6c91a94d6fff8893e949e12e48b65b4","active":"jdnc_1_3yuanshupian210601_2","joinnum":1}'
MyJxnc7='{"smp":"bef960a9648895d6976d5a34f3e65faa","active":"jdnc_1_ganju210315_2","joinnum":1}'
MyJxnc8='{"smp":"b5db408844655bbd238627c5c51b1fa4","active":"jdnc_1_1yuanqicheng210616_2","joinnum":1}'
MyJxnc9=''
MyJxnc10=''
MyJxnc11='{"smp":"5e4cfd6d13bcf557b71ad89aaf358ecb","active":"jdnc_1_mango1110_2","joinnum":1}'
MyJxnc12='{"smp":"c73b10e38a0d52a55273a540392fff97","active":"jdnc_1_qicheng210315_2","joinnum":1}'
MyJxnc13='{"smp":"9054611692621782dc4c96e5c0191b82","active":"jdnc_1_nangua210422_2","joinnum":1}'
MyJxnc14='{"smp":"a162cf1b32681ed4922701c884a313df","active":"jdnc_1_ganju210315_2","joinnum":1}'
MyJxnc15='{"smp":"cc7806959cf36831543c93d019c42756","active":"jdnc_1_cphuasheng210305_2","joinnum":1}'
MyJxnc16=''
MyJxnc17='{"smp":"be6c204e47db37a678cb4ea360609da2","active":"jdnc_1_1yuanjikuai210305_2","joinnum":1}'
MyJxnc18='{"smp":"c45cab27290afecf820a8e3debf636a0","active":"jdnc_1_huangjindou1112_2","joinnum":1}'

ForOtherJxnc1="${MyJxnc2}@${MyJxnc3}@${MyJxnc4}@${MyJxnc5}@${MyJxnc6}@${MyJxnc7}@${MyJxnc8}@${MyJxnc9}@${MyJxnc10}@${MyJxnc11}@${MyJxnc12}@${MyJxnc13}@${MyJxnc14}@${MyJxnc15}@${MyJxnc16}@${MyJxnc17}@${MyJxnc18}"
ForOtherJxnc2="${MyJxnc1}@${MyJxnc3}@${MyJxnc4}@${MyJxnc5}@${MyJxnc6}@${MyJxnc7}@${MyJxnc8}@${MyJxnc9}@${MyJxnc10}@${MyJxnc11}@${MyJxnc12}@${MyJxnc13}@${MyJxnc14}@${MyJxnc15}@${MyJxnc16}@${MyJxnc17}@${MyJxnc18}"
ForOtherJxnc3="${MyJxnc1}@${MyJxnc2}@${MyJxnc4}@${MyJxnc5}@${MyJxnc6}@${MyJxnc7}@${MyJxnc8}@${MyJxnc9}@${MyJxnc10}@${MyJxnc11}@${MyJxnc12}@${MyJxnc13}@${MyJxnc14}@${MyJxnc15}@${MyJxnc16}@${MyJxnc17}@${MyJxnc18}"
ForOtherJxnc4="${MyJxnc1}@${MyJxnc2}@${MyJxnc3}@${MyJxnc5}@${MyJxnc6}@${MyJxnc7}@${MyJxnc8}@${MyJxnc9}@${MyJxnc10}@${MyJxnc11}@${MyJxnc12}@${MyJxnc13}@${MyJxnc14}@${MyJxnc15}@${MyJxnc16}@${MyJxnc17}@${MyJxnc18}"
ForOtherJxnc5="${MyJxnc1}@${MyJxnc2}@${MyJxnc3}@${MyJxnc4}@${MyJxnc6}@${MyJxnc7}@${MyJxnc8}@${MyJxnc9}@${MyJxnc10}@${MyJxnc11}@${MyJxnc12}@${MyJxnc13}@${MyJxnc14}@${MyJxnc15}@${MyJxnc16}@${MyJxnc17}@${MyJxnc18}"
ForOtherJxnc6="${MyJxnc1}@${MyJxnc2}@${MyJxnc3}@${MyJxnc4}@${MyJxnc5}@${MyJxnc7}@${MyJxnc8}@${MyJxnc9}@${MyJxnc10}@${MyJxnc11}@${MyJxnc12}@${MyJxnc13}@${MyJxnc14}@${MyJxnc15}@${MyJxnc16}@${MyJxnc17}@${MyJxnc18}"
ForOtherJxnc7="${MyJxnc1}@${MyJxnc2}@${MyJxnc3}@${MyJxnc4}@${MyJxnc5}@${MyJxnc6}@${MyJxnc8}@${MyJxnc9}@${MyJxnc10}@${MyJxnc11}@${MyJxnc12}@${MyJxnc13}@${MyJxnc14}@${MyJxnc15}@${MyJxnc16}@${MyJxnc17}@${MyJxnc18}"
ForOtherJxnc8="${MyJxnc1}@${MyJxnc2}@${MyJxnc3}@${MyJxnc4}@${MyJxnc5}@${MyJxnc6}@${MyJxnc7}@${MyJxnc9}@${MyJxnc10}@${MyJxnc11}@${MyJxnc12}@${MyJxnc13}@${MyJxnc14}@${MyJxnc15}@${MyJxnc16}@${MyJxnc17}@${MyJxnc18}"
ForOtherJxnc9="${MyJxnc1}@${MyJxnc2}@${MyJxnc3}@${MyJxnc4}@${MyJxnc5}@${MyJxnc6}@${MyJxnc7}@${MyJxnc8}@${MyJxnc10}@${MyJxnc11}@${MyJxnc12}@${MyJxnc13}@${MyJxnc14}@${MyJxnc15}@${MyJxnc16}@${MyJxnc17}@${MyJxnc18}"
ForOtherJxnc10="${MyJxnc1}@${MyJxnc2}@${MyJxnc3}@${MyJxnc4}@${MyJxnc5}@${MyJxnc6}@${MyJxnc7}@${MyJxnc8}@${MyJxnc9}@${MyJxnc11}@${MyJxnc12}@${MyJxnc13}@${MyJxnc14}@${MyJxnc15}@${MyJxnc16}@${MyJxnc17}@${MyJxnc18}"
ForOtherJxnc11="${MyJxnc1}@${MyJxnc2}@${MyJxnc3}@${MyJxnc4}@${MyJxnc5}@${MyJxnc6}@${MyJxnc7}@${MyJxnc8}@${MyJxnc9}@${MyJxnc10}@${MyJxnc12}@${MyJxnc13}@${MyJxnc14}@${MyJxnc15}@${MyJxnc16}@${MyJxnc17}@${MyJxnc18}"
ForOtherJxnc12="${MyJxnc1}@${MyJxnc2}@${MyJxnc3}@${MyJxnc4}@${MyJxnc5}@${MyJxnc6}@${MyJxnc7}@${MyJxnc8}@${MyJxnc9}@${MyJxnc10}@${MyJxnc11}@${MyJxnc13}@${MyJxnc14}@${MyJxnc15}@${MyJxnc16}@${MyJxnc17}@${MyJxnc18}"
ForOtherJxnc13="${MyJxnc1}@${MyJxnc2}@${MyJxnc3}@${MyJxnc4}@${MyJxnc5}@${MyJxnc6}@${MyJxnc7}@${MyJxnc8}@${MyJxnc9}@${MyJxnc10}@${MyJxnc11}@${MyJxnc12}@${MyJxnc14}@${MyJxnc15}@${MyJxnc16}@${MyJxnc17}@${MyJxnc18}"
ForOtherJxnc14="${MyJxnc1}@${MyJxnc2}@${MyJxnc3}@${MyJxnc4}@${MyJxnc5}@${MyJxnc6}@${MyJxnc7}@${MyJxnc8}@${MyJxnc9}@${MyJxnc10}@${MyJxnc11}@${MyJxnc12}@${MyJxnc13}@${MyJxnc15}@${MyJxnc16}@${MyJxnc17}@${MyJxnc18}"
ForOtherJxnc15="${MyJxnc1}@${MyJxnc2}@${MyJxnc3}@${MyJxnc4}@${MyJxnc5}@${MyJxnc6}@${MyJxnc7}@${MyJxnc8}@${MyJxnc9}@${MyJxnc10}@${MyJxnc11}@${MyJxnc12}@${MyJxnc13}@${MyJxnc14}@${MyJxnc16}@${MyJxnc17}@${MyJxnc18}"
ForOtherJxnc16="${MyJxnc1}@${MyJxnc2}@${MyJxnc3}@${MyJxnc4}@${MyJxnc5}@${MyJxnc6}@${MyJxnc7}@${MyJxnc8}@${MyJxnc9}@${MyJxnc10}@${MyJxnc11}@${MyJxnc12}@${MyJxnc13}@${MyJxnc14}@${MyJxnc15}@${MyJxnc17}@${MyJxnc18}"
ForOtherJxnc17="${MyJxnc1}@${MyJxnc2}@${MyJxnc3}@${MyJxnc4}@${MyJxnc5}@${MyJxnc6}@${MyJxnc7}@${MyJxnc8}@${MyJxnc9}@${MyJxnc10}@${MyJxnc11}@${MyJxnc12}@${MyJxnc13}@${MyJxnc14}@${MyJxnc15}@${MyJxnc16}@${MyJxnc18}"
ForOtherJxnc18="${MyJxnc1}@${MyJxnc2}@${MyJxnc3}@${MyJxnc4}@${MyJxnc5}@${MyJxnc6}@${MyJxnc7}@${MyJxnc8}@${MyJxnc9}@${MyJxnc10}@${MyJxnc11}@${MyJxnc12}@${MyJxnc13}@${MyJxnc14}@${MyJxnc15}@${MyJxnc16}@${MyJxnc17}"

## 口袋书店：
## 从日志中未找到任何互助码

## 签到领现金：
MyCash1='Ihk_a-26Zfk79mfTwnIa1eg'
MyCash2='eU9Yar-xbqgkomqByXsW1A'
MyCash3='eU9YMZvBD5lPoA2mvwt0'
MyCash4='eU9YaOjjYvlw92aDyHUb3w'
MyCash5='eU9YMZLGEqR5hAypnQl5'
MyCash6='eU9Yau22M_h09j3QziFAhA'
MyCash7='eU9Ya7qzZqkmp2nRyHdA0A'
MyCash8='eU9YaOrmZqpy8miHwyISgA'
MyCash9=''
MyCash10=''
MyCash11='al5sNbDjO_Ql-W0'
MyCash12='9puIumw2sHei9G0'
MyCash13='eE5-cr-sIJN7'
MyCash14='Ihg-bu61Yfsu-Ge6iw'
MyCash15='eU9Ya7-3MP5w9G_cyCdG3g'
MyCash16=''
MyCash17='IBIxaOqyZfolnjM'
MyCash18='a1hyMqWyY_8n'

ForOtherCash1="${MyCash2}@${MyCash3}@${MyCash4}@${MyCash5}@${MyCash6}@${MyCash7}@${MyCash8}@${MyCash9}@${MyCash10}@${MyCash11}@${MyCash12}@${MyCash13}@${MyCash14}@${MyCash15}@${MyCash16}@${MyCash17}@${MyCash18}"
ForOtherCash2="${MyCash1}@${MyCash3}@${MyCash4}@${MyCash5}@${MyCash6}@${MyCash7}@${MyCash8}@${MyCash9}@${MyCash10}@${MyCash11}@${MyCash12}@${MyCash13}@${MyCash14}@${MyCash15}@${MyCash16}@${MyCash17}@${MyCash18}"
ForOtherCash3="${MyCash1}@${MyCash2}@${MyCash4}@${MyCash5}@${MyCash6}@${MyCash7}@${MyCash8}@${MyCash9}@${MyCash10}@${MyCash11}@${MyCash12}@${MyCash13}@${MyCash14}@${MyCash15}@${MyCash16}@${MyCash17}@${MyCash18}"
ForOtherCash4="${MyCash1}@${MyCash2}@${MyCash3}@${MyCash5}@${MyCash6}@${MyCash7}@${MyCash8}@${MyCash9}@${MyCash10}@${MyCash11}@${MyCash12}@${MyCash13}@${MyCash14}@${MyCash15}@${MyCash16}@${MyCash17}@${MyCash18}"
ForOtherCash5="${MyCash1}@${MyCash2}@${MyCash3}@${MyCash4}@${MyCash6}@${MyCash7}@${MyCash8}@${MyCash9}@${MyCash10}@${MyCash11}@${MyCash12}@${MyCash13}@${MyCash14}@${MyCash15}@${MyCash16}@${MyCash17}@${MyCash18}"
ForOtherCash6="${MyCash1}@${MyCash2}@${MyCash3}@${MyCash4}@${MyCash5}@${MyCash7}@${MyCash8}@${MyCash9}@${MyCash10}@${MyCash11}@${MyCash12}@${MyCash13}@${MyCash14}@${MyCash15}@${MyCash16}@${MyCash17}@${MyCash18}"
ForOtherCash7="${MyCash1}@${MyCash2}@${MyCash3}@${MyCash4}@${MyCash5}@${MyCash6}@${MyCash8}@${MyCash9}@${MyCash10}@${MyCash11}@${MyCash12}@${MyCash13}@${MyCash14}@${MyCash15}@${MyCash16}@${MyCash17}@${MyCash18}"
ForOtherCash8="${MyCash1}@${MyCash2}@${MyCash3}@${MyCash4}@${MyCash5}@${MyCash6}@${MyCash7}@${MyCash9}@${MyCash10}@${MyCash11}@${MyCash12}@${MyCash13}@${MyCash14}@${MyCash15}@${MyCash16}@${MyCash17}@${MyCash18}"
ForOtherCash9="${MyCash1}@${MyCash2}@${MyCash3}@${MyCash4}@${MyCash5}@${MyCash6}@${MyCash7}@${MyCash8}@${MyCash10}@${MyCash11}@${MyCash12}@${MyCash13}@${MyCash14}@${MyCash15}@${MyCash16}@${MyCash17}@${MyCash18}"
ForOtherCash10="${MyCash1}@${MyCash2}@${MyCash3}@${MyCash4}@${MyCash5}@${MyCash6}@${MyCash7}@${MyCash8}@${MyCash9}@${MyCash11}@${MyCash12}@${MyCash13}@${MyCash14}@${MyCash15}@${MyCash16}@${MyCash17}@${MyCash18}"
ForOtherCash11="${MyCash1}@${MyCash2}@${MyCash3}@${MyCash4}@${MyCash5}@${MyCash6}@${MyCash7}@${MyCash8}@${MyCash9}@${MyCash10}@${MyCash12}@${MyCash13}@${MyCash14}@${MyCash15}@${MyCash16}@${MyCash17}@${MyCash18}"
ForOtherCash12="${MyCash1}@${MyCash2}@${MyCash3}@${MyCash4}@${MyCash5}@${MyCash6}@${MyCash7}@${MyCash8}@${MyCash9}@${MyCash10}@${MyCash11}@${MyCash13}@${MyCash14}@${MyCash15}@${MyCash16}@${MyCash17}@${MyCash18}"
ForOtherCash13="${MyCash1}@${MyCash2}@${MyCash3}@${MyCash4}@${MyCash5}@${MyCash6}@${MyCash7}@${MyCash8}@${MyCash9}@${MyCash10}@${MyCash11}@${MyCash12}@${MyCash14}@${MyCash15}@${MyCash16}@${MyCash17}@${MyCash18}"
ForOtherCash14="${MyCash1}@${MyCash2}@${MyCash3}@${MyCash4}@${MyCash5}@${MyCash6}@${MyCash7}@${MyCash8}@${MyCash9}@${MyCash10}@${MyCash11}@${MyCash12}@${MyCash13}@${MyCash15}@${MyCash16}@${MyCash17}@${MyCash18}"
ForOtherCash15="${MyCash1}@${MyCash2}@${MyCash3}@${MyCash4}@${MyCash5}@${MyCash6}@${MyCash7}@${MyCash8}@${MyCash9}@${MyCash10}@${MyCash11}@${MyCash12}@${MyCash13}@${MyCash14}@${MyCash16}@${MyCash17}@${MyCash18}"
ForOtherCash16="${MyCash1}@${MyCash2}@${MyCash3}@${MyCash4}@${MyCash5}@${MyCash6}@${MyCash7}@${MyCash8}@${MyCash9}@${MyCash10}@${MyCash11}@${MyCash12}@${MyCash13}@${MyCash14}@${MyCash15}@${MyCash17}@${MyCash18}"
ForOtherCash17="${MyCash1}@${MyCash2}@${MyCash3}@${MyCash4}@${MyCash5}@${MyCash6}@${MyCash7}@${MyCash8}@${MyCash9}@${MyCash10}@${MyCash11}@${MyCash12}@${MyCash13}@${MyCash14}@${MyCash15}@${MyCash16}@${MyCash18}"
ForOtherCash18="${MyCash1}@${MyCash2}@${MyCash3}@${MyCash4}@${MyCash5}@${MyCash6}@${MyCash7}@${MyCash8}@${MyCash9}@${MyCash10}@${MyCash11}@${MyCash12}@${MyCash13}@${MyCash14}@${MyCash15}@${MyCash16}@${MyCash17}"

## 闪购盲盒：
MySgmh1='T023v_97Rx8R9lHKJxPynfYDd8cCjVQmoaT5kRrbA'
MySgmh2='T0225KkcRk0a_QDVcx6glv8PdgCjVQmoaT5kRrbA'
MySgmh3='T0205KkcHWlqnDG-cXmH4I9tCjVQmoaT5kRrbA'
MySgmh4='T0225KkcRBpI8VGBJhKil_ECfQCjVQmoaT5kRrbA'
MySgmh5='T0205KkcHWBtgQyIVXiIwo1gCjVQmoaT5kRrbA'
MySgmh6='T0225KkcRh8doFCFJ0nxkaVZJgCjVQmoaT5kRrbA'
MySgmh7='T0225KkcR0gY9QHXdh3wl_NZcgCjVQmoaT5kRrbA'
MySgmh8='T0225KkcRBhN9QKDIxymnKYLIgCjVQmoaT5kRrbA'
MySgmh9=''
MySgmh10=''
MySgmh11='T01597goGUJIqFzUKBkCjVQmoaT5kRrbA'
MySgmh12='T015a33Mlp6dI99TJRkCjVQmoaT5kRrbA'
MySgmh13='T0125ag6Xk0HszuKCjVQmoaT5kRrbA'
MySgmh14='T018v_56Qhwe8lPfKROb1ACjVQmoaT5kRrbA'
MySgmh15='T0225KkcR00co1aBJRv9l6NffACjVQmoaT5kRrbA'
MySgmh16=''
MySgmh17='T015vfR1RBgZ9lLUT0cCjVQmoaT5kRrbA'
MySgmh18='T0129r42HlcZ8FfWCjVQmoaT5kRrbA'

ForOtherSgmh1="${MySgmh2}@${MySgmh3}@${MySgmh4}@${MySgmh5}@${MySgmh6}@${MySgmh7}@${MySgmh8}@${MySgmh9}@${MySgmh10}@${MySgmh11}@${MySgmh12}@${MySgmh13}@${MySgmh14}@${MySgmh15}@${MySgmh16}@${MySgmh17}@${MySgmh18}"
ForOtherSgmh2="${MySgmh1}@${MySgmh3}@${MySgmh4}@${MySgmh5}@${MySgmh6}@${MySgmh7}@${MySgmh8}@${MySgmh9}@${MySgmh10}@${MySgmh11}@${MySgmh12}@${MySgmh13}@${MySgmh14}@${MySgmh15}@${MySgmh16}@${MySgmh17}@${MySgmh18}"
ForOtherSgmh3="${MySgmh1}@${MySgmh2}@${MySgmh4}@${MySgmh5}@${MySgmh6}@${MySgmh7}@${MySgmh8}@${MySgmh9}@${MySgmh10}@${MySgmh11}@${MySgmh12}@${MySgmh13}@${MySgmh14}@${MySgmh15}@${MySgmh16}@${MySgmh17}@${MySgmh18}"
ForOtherSgmh4="${MySgmh1}@${MySgmh2}@${MySgmh3}@${MySgmh5}@${MySgmh6}@${MySgmh7}@${MySgmh8}@${MySgmh9}@${MySgmh10}@${MySgmh11}@${MySgmh12}@${MySgmh13}@${MySgmh14}@${MySgmh15}@${MySgmh16}@${MySgmh17}@${MySgmh18}"
ForOtherSgmh5="${MySgmh1}@${MySgmh2}@${MySgmh3}@${MySgmh4}@${MySgmh6}@${MySgmh7}@${MySgmh8}@${MySgmh9}@${MySgmh10}@${MySgmh11}@${MySgmh12}@${MySgmh13}@${MySgmh14}@${MySgmh15}@${MySgmh16}@${MySgmh17}@${MySgmh18}"
ForOtherSgmh6="${MySgmh1}@${MySgmh2}@${MySgmh3}@${MySgmh4}@${MySgmh5}@${MySgmh7}@${MySgmh8}@${MySgmh9}@${MySgmh10}@${MySgmh11}@${MySgmh12}@${MySgmh13}@${MySgmh14}@${MySgmh15}@${MySgmh16}@${MySgmh17}@${MySgmh18}"
ForOtherSgmh7="${MySgmh1}@${MySgmh2}@${MySgmh3}@${MySgmh4}@${MySgmh5}@${MySgmh6}@${MySgmh8}@${MySgmh9}@${MySgmh10}@${MySgmh11}@${MySgmh12}@${MySgmh13}@${MySgmh14}@${MySgmh15}@${MySgmh16}@${MySgmh17}@${MySgmh18}"
ForOtherSgmh8="${MySgmh1}@${MySgmh2}@${MySgmh3}@${MySgmh4}@${MySgmh5}@${MySgmh6}@${MySgmh7}@${MySgmh9}@${MySgmh10}@${MySgmh11}@${MySgmh12}@${MySgmh13}@${MySgmh14}@${MySgmh15}@${MySgmh16}@${MySgmh17}@${MySgmh18}"
ForOtherSgmh9="${MySgmh1}@${MySgmh2}@${MySgmh3}@${MySgmh4}@${MySgmh5}@${MySgmh6}@${MySgmh7}@${MySgmh8}@${MySgmh10}@${MySgmh11}@${MySgmh12}@${MySgmh13}@${MySgmh14}@${MySgmh15}@${MySgmh16}@${MySgmh17}@${MySgmh18}"
ForOtherSgmh10="${MySgmh1}@${MySgmh2}@${MySgmh3}@${MySgmh4}@${MySgmh5}@${MySgmh6}@${MySgmh7}@${MySgmh8}@${MySgmh9}@${MySgmh11}@${MySgmh12}@${MySgmh13}@${MySgmh14}@${MySgmh15}@${MySgmh16}@${MySgmh17}@${MySgmh18}"
ForOtherSgmh11="${MySgmh1}@${MySgmh2}@${MySgmh3}@${MySgmh4}@${MySgmh5}@${MySgmh6}@${MySgmh7}@${MySgmh8}@${MySgmh9}@${MySgmh10}@${MySgmh12}@${MySgmh13}@${MySgmh14}@${MySgmh15}@${MySgmh16}@${MySgmh17}@${MySgmh18}"
ForOtherSgmh12="${MySgmh1}@${MySgmh2}@${MySgmh3}@${MySgmh4}@${MySgmh5}@${MySgmh6}@${MySgmh7}@${MySgmh8}@${MySgmh9}@${MySgmh10}@${MySgmh11}@${MySgmh13}@${MySgmh14}@${MySgmh15}@${MySgmh16}@${MySgmh17}@${MySgmh18}"
ForOtherSgmh13="${MySgmh1}@${MySgmh2}@${MySgmh3}@${MySgmh4}@${MySgmh5}@${MySgmh6}@${MySgmh7}@${MySgmh8}@${MySgmh9}@${MySgmh10}@${MySgmh11}@${MySgmh12}@${MySgmh14}@${MySgmh15}@${MySgmh16}@${MySgmh17}@${MySgmh18}"
ForOtherSgmh14="${MySgmh1}@${MySgmh2}@${MySgmh3}@${MySgmh4}@${MySgmh5}@${MySgmh6}@${MySgmh7}@${MySgmh8}@${MySgmh9}@${MySgmh10}@${MySgmh11}@${MySgmh12}@${MySgmh13}@${MySgmh15}@${MySgmh16}@${MySgmh17}@${MySgmh18}"
ForOtherSgmh15="${MySgmh1}@${MySgmh2}@${MySgmh3}@${MySgmh4}@${MySgmh5}@${MySgmh6}@${MySgmh7}@${MySgmh8}@${MySgmh9}@${MySgmh10}@${MySgmh11}@${MySgmh12}@${MySgmh13}@${MySgmh14}@${MySgmh16}@${MySgmh17}@${MySgmh18}"
ForOtherSgmh16="${MySgmh1}@${MySgmh2}@${MySgmh3}@${MySgmh4}@${MySgmh5}@${MySgmh6}@${MySgmh7}@${MySgmh8}@${MySgmh9}@${MySgmh10}@${MySgmh11}@${MySgmh12}@${MySgmh13}@${MySgmh14}@${MySgmh15}@${MySgmh17}@${MySgmh18}"
ForOtherSgmh17="${MySgmh1}@${MySgmh2}@${MySgmh3}@${MySgmh4}@${MySgmh5}@${MySgmh6}@${MySgmh7}@${MySgmh8}@${MySgmh9}@${MySgmh10}@${MySgmh11}@${MySgmh12}@${MySgmh13}@${MySgmh14}@${MySgmh15}@${MySgmh16}@${MySgmh18}"
ForOtherSgmh18="${MySgmh1}@${MySgmh2}@${MySgmh3}@${MySgmh4}@${MySgmh5}@${MySgmh6}@${MySgmh7}@${MySgmh8}@${MySgmh9}@${MySgmh10}@${MySgmh11}@${MySgmh12}@${MySgmh13}@${MySgmh14}@${MySgmh15}@${MySgmh16}@${MySgmh17}"

## 京喜财富岛：
MyCfd1='08CF295FD9F378812B2E683B02E6418C4D3578ED7BDCBFA34B6CC4124EBF8E7A'
MyCfd2='5A1513B44FDAEA7BF5E7C0F33B296C08F59959D60365A5FECEC70D4CD46C2BA3'
MyCfd3='2CE6C41DE0113424784C363FFB4E049FBEE603D7BA325EA9DE333388E2A89E6E'
MyCfd4='AFFB2DF5F3AFE7D5C320493CBD9144C3B91AC830AC604348D02B863C91B8950B'
MyCfd5='758980F9C040A7596760F3B11501E6B1F7332D25EE0DDD5457B2A04021B57632'
MyCfd6='247AD37700A1F77ADB889D9590B338118B314EE0E4F80B25231B0EF7420782E9'
MyCfd7='C4C59E3FA2AB5AE1D8012A44A0D794081CD3D5A563A5E3CE07B7ECDB77994C2C'
MyCfd8='E25F5B6DECCF6435E2066A89EE8954B5B07EDE40DAC8A0050876C7EFFF14EEAB'
MyCfd9='8E5B35DAAAF5A82C689AE5883691B53E334378CCB44366207909D0E6EC672A8B'
MyCfd10='924E7AD96B0756E54E2BDC975B57F4BEC054788E665DFA973830FABACB2E1C1D'
MyCfd11='9911D369866FE90B6BA944AB27BD83DD8329E95903D31F779A1F2979745B9369'
MyCfd12='A681D3EBDAF014760D8B85B3A74788E84828D3030CB8B7FC7D56EF55EDF296B2'
MyCfd13=''
MyCfd14=''
MyCfd15=''
MyCfd16=''
MyCfd17=''
MyCfd18=''

ForOtherCfd1="${MyCfd2}@${MyCfd3}@${MyCfd4}@${MyCfd5}@${MyCfd6}@${MyCfd7}@${MyCfd8}@${MyCfd9}@${MyCfd10}@${MyCfd11}@${MyCfd12}@${MyCfd13}@${MyCfd14}@${MyCfd15}@${MyCfd16}@${MyCfd17}@${MyCfd18}"
ForOtherCfd2="${MyCfd1}@${MyCfd3}@${MyCfd4}@${MyCfd5}@${MyCfd6}@${MyCfd7}@${MyCfd8}@${MyCfd9}@${MyCfd10}@${MyCfd11}@${MyCfd12}@${MyCfd13}@${MyCfd14}@${MyCfd15}@${MyCfd16}@${MyCfd17}@${MyCfd18}"
ForOtherCfd3="${MyCfd1}@${MyCfd2}@${MyCfd4}@${MyCfd5}@${MyCfd6}@${MyCfd7}@${MyCfd8}@${MyCfd9}@${MyCfd10}@${MyCfd11}@${MyCfd12}@${MyCfd13}@${MyCfd14}@${MyCfd15}@${MyCfd16}@${MyCfd17}@${MyCfd18}"
ForOtherCfd4="${MyCfd1}@${MyCfd2}@${MyCfd3}@${MyCfd5}@${MyCfd6}@${MyCfd7}@${MyCfd8}@${MyCfd9}@${MyCfd10}@${MyCfd11}@${MyCfd12}@${MyCfd13}@${MyCfd14}@${MyCfd15}@${MyCfd16}@${MyCfd17}@${MyCfd18}"
ForOtherCfd5="${MyCfd1}@${MyCfd2}@${MyCfd3}@${MyCfd4}@${MyCfd6}@${MyCfd7}@${MyCfd8}@${MyCfd9}@${MyCfd10}@${MyCfd11}@${MyCfd12}@${MyCfd13}@${MyCfd14}@${MyCfd15}@${MyCfd16}@${MyCfd17}@${MyCfd18}"
ForOtherCfd6="${MyCfd1}@${MyCfd2}@${MyCfd3}@${MyCfd4}@${MyCfd5}@${MyCfd7}@${MyCfd8}@${MyCfd9}@${MyCfd10}@${MyCfd11}@${MyCfd12}@${MyCfd13}@${MyCfd14}@${MyCfd15}@${MyCfd16}@${MyCfd17}@${MyCfd18}"
ForOtherCfd7="${MyCfd1}@${MyCfd2}@${MyCfd3}@${MyCfd4}@${MyCfd5}@${MyCfd6}@${MyCfd8}@${MyCfd9}@${MyCfd10}@${MyCfd11}@${MyCfd12}@${MyCfd13}@${MyCfd14}@${MyCfd15}@${MyCfd16}@${MyCfd17}@${MyCfd18}"
ForOtherCfd8="${MyCfd1}@${MyCfd2}@${MyCfd3}@${MyCfd4}@${MyCfd5}@${MyCfd6}@${MyCfd7}@${MyCfd9}@${MyCfd10}@${MyCfd11}@${MyCfd12}@${MyCfd13}@${MyCfd14}@${MyCfd15}@${MyCfd16}@${MyCfd17}@${MyCfd18}"
ForOtherCfd9="${MyCfd1}@${MyCfd2}@${MyCfd3}@${MyCfd4}@${MyCfd5}@${MyCfd6}@${MyCfd7}@${MyCfd8}@${MyCfd10}@${MyCfd11}@${MyCfd12}@${MyCfd13}@${MyCfd14}@${MyCfd15}@${MyCfd16}@${MyCfd17}@${MyCfd18}"
ForOtherCfd10="${MyCfd1}@${MyCfd2}@${MyCfd3}@${MyCfd4}@${MyCfd5}@${MyCfd6}@${MyCfd7}@${MyCfd8}@${MyCfd9}@${MyCfd11}@${MyCfd12}@${MyCfd13}@${MyCfd14}@${MyCfd15}@${MyCfd16}@${MyCfd17}@${MyCfd18}"
ForOtherCfd11="${MyCfd1}@${MyCfd2}@${MyCfd3}@${MyCfd4}@${MyCfd5}@${MyCfd6}@${MyCfd7}@${MyCfd8}@${MyCfd9}@${MyCfd10}@${MyCfd12}@${MyCfd13}@${MyCfd14}@${MyCfd15}@${MyCfd16}@${MyCfd17}@${MyCfd18}"
ForOtherCfd12="${MyCfd1}@${MyCfd2}@${MyCfd3}@${MyCfd4}@${MyCfd5}@${MyCfd6}@${MyCfd7}@${MyCfd8}@${MyCfd9}@${MyCfd10}@${MyCfd11}@${MyCfd13}@${MyCfd14}@${MyCfd15}@${MyCfd16}@${MyCfd17}@${MyCfd18}"
ForOtherCfd13="${MyCfd1}@${MyCfd2}@${MyCfd3}@${MyCfd4}@${MyCfd5}@${MyCfd6}@${MyCfd7}@${MyCfd8}@${MyCfd9}@${MyCfd10}@${MyCfd11}@${MyCfd12}@${MyCfd14}@${MyCfd15}@${MyCfd16}@${MyCfd17}@${MyCfd18}"
ForOtherCfd14="${MyCfd1}@${MyCfd2}@${MyCfd3}@${MyCfd4}@${MyCfd5}@${MyCfd6}@${MyCfd7}@${MyCfd8}@${MyCfd9}@${MyCfd10}@${MyCfd11}@${MyCfd12}@${MyCfd13}@${MyCfd15}@${MyCfd16}@${MyCfd17}@${MyCfd18}"
ForOtherCfd15="${MyCfd1}@${MyCfd2}@${MyCfd3}@${MyCfd4}@${MyCfd5}@${MyCfd6}@${MyCfd7}@${MyCfd8}@${MyCfd9}@${MyCfd10}@${MyCfd11}@${MyCfd12}@${MyCfd13}@${MyCfd14}@${MyCfd16}@${MyCfd17}@${MyCfd18}"
ForOtherCfd16="${MyCfd1}@${MyCfd2}@${MyCfd3}@${MyCfd4}@${MyCfd5}@${MyCfd6}@${MyCfd7}@${MyCfd8}@${MyCfd9}@${MyCfd10}@${MyCfd11}@${MyCfd12}@${MyCfd13}@${MyCfd14}@${MyCfd15}@${MyCfd17}@${MyCfd18}"
ForOtherCfd17="${MyCfd1}@${MyCfd2}@${MyCfd3}@${MyCfd4}@${MyCfd5}@${MyCfd6}@${MyCfd7}@${MyCfd8}@${MyCfd9}@${MyCfd10}@${MyCfd11}@${MyCfd12}@${MyCfd13}@${MyCfd14}@${MyCfd15}@${MyCfd16}@${MyCfd18}"
ForOtherCfd18="${MyCfd1}@${MyCfd2}@${MyCfd3}@${MyCfd4}@${MyCfd5}@${MyCfd6}@${MyCfd7}@${MyCfd8}@${MyCfd9}@${MyCfd10}@${MyCfd11}@${MyCfd12}@${MyCfd13}@${MyCfd14}@${MyCfd15}@${MyCfd16}@${MyCfd17}"

## 东东健康社区：
MyHealth1='T023v_97Rx8R9lHKJxPynfYDd8cCjVfnoaW5kRrbA'
MyHealth2='T0225KkcRk0a_QDVcx6glv8PdgCjVfnoaW5kRrbA'
MyHealth3='T0205KkcHWlqnDG-cXmH4I9tCjVfnoaW5kRrbA'
MyHealth4='T0225KkcRBpI8VGBJhKil_ECfQCjVfnoaW5kRrbA'
MyHealth5=''
MyHealth6='T0225KkcRh8doFCFJ0nxkaVZJgCjVfnoaW5kRrbA'
MyHealth7='T0225KkcR0gY9QHXdh3wl_NZcgCjVfnoaW5kRrbA'
MyHealth8='T0225KkcRBhN9QKDIxymnKYLIgCjVfnoaW5kRrbA'
MyHealth9=''
MyHealth10=''
MyHealth11='T01597goGUJIqFzUKBkCjVfnoaW5kRrbA'
MyHealth12='T015a33Mlp6dI99TJRkCjVfnoaW5kRrbA'
MyHealth13='T0125ag6Xk0HszuKCjVfnoaW5kRrbA'
MyHealth14='T018v_56Qhwe8lPfKROb1ACjVfnoaW5kRrbA'
MyHealth15='T0225KkcR00co1aBJRv9l6NffACjVfnoaW5kRrbA'
MyHealth16=''
MyHealth17='T015vfR1RBgZ9lLUT0cCjVfnoaW5kRrbA'
MyHealth18='T0129r42HlcZ8FfWCjVfnoaW5kRrbA'

ForOtherHealth1="${MyHealth2}@${MyHealth3}@${MyHealth4}@${MyHealth5}@${MyHealth6}@${MyHealth7}@${MyHealth8}@${MyHealth9}@${MyHealth10}@${MyHealth11}@${MyHealth12}@${MyHealth13}@${MyHealth14}@${MyHealth15}@${MyHealth16}@${MyHealth17}@${MyHealth18}"
ForOtherHealth2="${MyHealth1}@${MyHealth3}@${MyHealth4}@${MyHealth5}@${MyHealth6}@${MyHealth7}@${MyHealth8}@${MyHealth9}@${MyHealth10}@${MyHealth11}@${MyHealth12}@${MyHealth13}@${MyHealth14}@${MyHealth15}@${MyHealth16}@${MyHealth17}@${MyHealth18}"
ForOtherHealth3="${MyHealth1}@${MyHealth2}@${MyHealth4}@${MyHealth5}@${MyHealth6}@${MyHealth7}@${MyHealth8}@${MyHealth9}@${MyHealth10}@${MyHealth11}@${MyHealth12}@${MyHealth13}@${MyHealth14}@${MyHealth15}@${MyHealth16}@${MyHealth17}@${MyHealth18}"
ForOtherHealth4="${MyHealth1}@${MyHealth2}@${MyHealth3}@${MyHealth5}@${MyHealth6}@${MyHealth7}@${MyHealth8}@${MyHealth9}@${MyHealth10}@${MyHealth11}@${MyHealth12}@${MyHealth13}@${MyHealth14}@${MyHealth15}@${MyHealth16}@${MyHealth17}@${MyHealth18}"
ForOtherHealth5="${MyHealth1}@${MyHealth2}@${MyHealth3}@${MyHealth4}@${MyHealth6}@${MyHealth7}@${MyHealth8}@${MyHealth9}@${MyHealth10}@${MyHealth11}@${MyHealth12}@${MyHealth13}@${MyHealth14}@${MyHealth15}@${MyHealth16}@${MyHealth17}@${MyHealth18}"
ForOtherHealth6="${MyHealth1}@${MyHealth2}@${MyHealth3}@${MyHealth4}@${MyHealth5}@${MyHealth7}@${MyHealth8}@${MyHealth9}@${MyHealth10}@${MyHealth11}@${MyHealth12}@${MyHealth13}@${MyHealth14}@${MyHealth15}@${MyHealth16}@${MyHealth17}@${MyHealth18}"
ForOtherHealth7="${MyHealth1}@${MyHealth2}@${MyHealth3}@${MyHealth4}@${MyHealth5}@${MyHealth6}@${MyHealth8}@${MyHealth9}@${MyHealth10}@${MyHealth11}@${MyHealth12}@${MyHealth13}@${MyHealth14}@${MyHealth15}@${MyHealth16}@${MyHealth17}@${MyHealth18}"
ForOtherHealth8="${MyHealth1}@${MyHealth2}@${MyHealth3}@${MyHealth4}@${MyHealth5}@${MyHealth6}@${MyHealth7}@${MyHealth9}@${MyHealth10}@${MyHealth11}@${MyHealth12}@${MyHealth13}@${MyHealth14}@${MyHealth15}@${MyHealth16}@${MyHealth17}@${MyHealth18}"
ForOtherHealth9="${MyHealth1}@${MyHealth2}@${MyHealth3}@${MyHealth4}@${MyHealth5}@${MyHealth6}@${MyHealth7}@${MyHealth8}@${MyHealth10}@${MyHealth11}@${MyHealth12}@${MyHealth13}@${MyHealth14}@${MyHealth15}@${MyHealth16}@${MyHealth17}@${MyHealth18}"
ForOtherHealth10="${MyHealth1}@${MyHealth2}@${MyHealth3}@${MyHealth4}@${MyHealth5}@${MyHealth6}@${MyHealth7}@${MyHealth8}@${MyHealth9}@${MyHealth11}@${MyHealth12}@${MyHealth13}@${MyHealth14}@${MyHealth15}@${MyHealth16}@${MyHealth17}@${MyHealth18}"
ForOtherHealth11="${MyHealth1}@${MyHealth2}@${MyHealth3}@${MyHealth4}@${MyHealth5}@${MyHealth6}@${MyHealth7}@${MyHealth8}@${MyHealth9}@${MyHealth10}@${MyHealth12}@${MyHealth13}@${MyHealth14}@${MyHealth15}@${MyHealth16}@${MyHealth17}@${MyHealth18}"
ForOtherHealth12="${MyHealth1}@${MyHealth2}@${MyHealth3}@${MyHealth4}@${MyHealth5}@${MyHealth6}@${MyHealth7}@${MyHealth8}@${MyHealth9}@${MyHealth10}@${MyHealth11}@${MyHealth13}@${MyHealth14}@${MyHealth15}@${MyHealth16}@${MyHealth17}@${MyHealth18}"
ForOtherHealth13="${MyHealth1}@${MyHealth2}@${MyHealth3}@${MyHealth4}@${MyHealth5}@${MyHealth6}@${MyHealth7}@${MyHealth8}@${MyHealth9}@${MyHealth10}@${MyHealth11}@${MyHealth12}@${MyHealth14}@${MyHealth15}@${MyHealth16}@${MyHealth17}@${MyHealth18}"
ForOtherHealth14="${MyHealth1}@${MyHealth2}@${MyHealth3}@${MyHealth4}@${MyHealth5}@${MyHealth6}@${MyHealth7}@${MyHealth8}@${MyHealth9}@${MyHealth10}@${MyHealth11}@${MyHealth12}@${MyHealth13}@${MyHealth15}@${MyHealth16}@${MyHealth17}@${MyHealth18}"
ForOtherHealth15="${MyHealth1}@${MyHealth2}@${MyHealth3}@${MyHealth4}@${MyHealth5}@${MyHealth6}@${MyHealth7}@${MyHealth8}@${MyHealth9}@${MyHealth10}@${MyHealth11}@${MyHealth12}@${MyHealth13}@${MyHealth14}@${MyHealth16}@${MyHealth17}@${MyHealth18}"
ForOtherHealth16="${MyHealth1}@${MyHealth2}@${MyHealth3}@${MyHealth4}@${MyHealth5}@${MyHealth6}@${MyHealth7}@${MyHealth8}@${MyHealth9}@${MyHealth10}@${MyHealth11}@${MyHealth12}@${MyHealth13}@${MyHealth14}@${MyHealth15}@${MyHealth17}@${MyHealth18}"
ForOtherHealth17="${MyHealth1}@${MyHealth2}@${MyHealth3}@${MyHealth4}@${MyHealth5}@${MyHealth6}@${MyHealth7}@${MyHealth8}@${MyHealth9}@${MyHealth10}@${MyHealth11}@${MyHealth12}@${MyHealth13}@${MyHealth14}@${MyHealth15}@${MyHealth16}@${MyHealth18}"
ForOtherHealth18="${MyHealth1}@${MyHealth2}@${MyHealth3}@${MyHealth4}@${MyHealth5}@${MyHealth6}@${MyHealth7}@${MyHealth8}@${MyHealth9}@${MyHealth10}@${MyHealth11}@${MyHealth12}@${MyHealth13}@${MyHealth14}@${MyHealth15}@${MyHealth16}@${MyHealth17}"
env_name=(
  FRUITSHARECODES
  PETSHARECODES
  PLANT_BEAN_SHARECODES
  DREAM_FACTORY_SHARE_CODES
  DDFACTORY_SHARECODES
  JDZZ_SHARECODES
  JDJOY_SHARECODES
  JXNC_SHARECODES
  BOOKSHOP_SHARECODES
  JD_CASH_SHARECODES
  JDSGMH_SHARECODES
  JDCFD_SHARECODES
  JDHEALTH_SHARECODES
)
var_name=(
  ForOtherFruit
  ForOtherPet
  ForOtherBean
  ForOtherDreamFactory
  ForOtherJdFactory
  ForOtherJdzz
  ForOtherJoy
  ForOtherJxnc
  ForOtherBookShop
  ForOtherCash
  ForOtherSgmh
  ForOtherCfd
  ForOtherHealth
)

combine_sub() {
    local what_combine=$1
    local combined_all=""
    local tmp1 tmp2
    local envs=$(eval echo "\$JD_COOKIE")
    local array=($(echo $envs | sed 's/&/ /g'))
    local user_sum=${#array[*]}
    for ((i = 1; i <= $user_sum; i++)); do
        local tmp1=$what_combine$i
        local tmp2=${!tmp1}
        combined_all="$combined_all&$tmp2"
    done
    echo $combined_all | perl -pe "{s|^&||; s|^@+||; s|&@|&|g; s|@+&|&|g; s|@+|@|g; s|@+$||}"
}

## 正常依次运行时，组合所有账号的Cookie与互助码
combine_all() {
    for ((i = 0; i < ${#env_name[*]}; i++)); do
        result=$(combine_sub ${var_name[i]})
        if [[ $result ]]; then
            export ${env_name[i]}="$result"
        fi
    done
}

combine_all
