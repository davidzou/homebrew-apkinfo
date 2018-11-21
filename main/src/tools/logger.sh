#!/usr/bin/env bash
# ****************************************************************************************
#  [脚本标题描述]
#  version    : @version@
#  author     : @author@
#  date       : @date@
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
    stamp=`date '+%y-%m-%d %H:%M:%S'`
    echo "[${PROGRESS_NAME}][line ${BASH_LINENO}][$stamp][Info] $1"
}

function printError(){
    stamp=`date '+%y-%m-%d %H:%M:%S'`
    echo "[${PROGRESS_NAME}][line ${BASH_LINENO}][$stamp][Error] $1"
}