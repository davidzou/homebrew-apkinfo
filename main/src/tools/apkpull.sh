#!/usr/bin/env bash
# ****************************************************************************************
#  [脚本标题描述] 获取apk文件，通过已安装的手机应用
#  version    : @version@
#  author     : @author@
#  date       : @date@
#
#  [功能]:
#
#  [执行流程]:
#               adb shell pm list package -f -3
#               adb pull address
#  [传参解析]:
#
#  [环境配置]:
#
# ****************************************************************************************

function findApk() {
    checkCommand apk
    package_name=`adb shell pm list package -f -3`
}

function pull() {
    findApk $1
    adb pull ${package_name}
}