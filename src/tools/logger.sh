#!/usr/bin/env bash
# ****************************************************************************************
#  [脚本标题描述]
#  version    : 1.0.0
#  author     : DavidZou -- wearecisco@gmail.com
#  date       : 2017.05.10
#
#  [功能]:
#
#  [执行流程]:
#
#  [传参解析]:
#
#  [环境配置]:
#
# ****************************************************************************************

########################
# 打印输出给定的帮助文件
# Example： print_help_file ${ROOT}/function/hjbuild_option_help.txt
########################
function print_help_file(){
    awk '{print $0}' $1
}

function printInfo(){
    echo "[Info] $1"
}
