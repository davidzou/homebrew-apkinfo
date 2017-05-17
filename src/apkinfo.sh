#!/bin/bash
# ****************************************************************************************
#  [脚本标题描述]
#  version    : 1.0.0
#  author     : DavidZou -- wearecisco@gmail.com
#  date       : 2017.05.07
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

######################
# 检测系统是否配置了aapt命令
#     返回值为${AAPT_HOME}
######################
function check_command_aapt() {
    if [ -z `which aapt` ] ; then
        if [ -n "${ANDROID_SDK_HOME}" ] ; then
            version=`ls ${ANDROID_SDK_HOME}/build-tools/ | tail -n 1`
            AAPT_HOME=${ANDROID_SDK_HOME}/build-tools/${version}
        else
            echo "Not find command 'aapt'. Please setup it, or export env variant ANDROID_SDK_HOME"
            exit 1
        fi
    else
        RESULT=`which aapt`
        AAPT_HOME=${RESULT%/*}
    fi
}

######################
# 解析获取包名和版本名的值
# $1 apk
# $2 过滤条件
# $3 分隔位置
######################
function getValue(){
    value=`aapt dump --include-meta-data badging $1 | grep $2 | cut -d " " -f$3 | cut -d = -f2 | cut -d \' -f2`
    echo ${value}
}

######################
# 解析获取Meta-data的值
# $1 apk
# $2 过滤条件
#  Example : aapt dump --include-meta-data badging xxx.apk | grep XXX | cut -d = -f3 | perl -p -e "s/\'//g"
######################
function getValueMeta(){
    value=`aapt dump --include-meta-data badging $1 | grep \'$2 | cut -d = -f3 | perl -p -e "s/\'//g"`
    echo ${value}
}

# ====================
# 环境参数及类管理
# ====================

echo "Hello erery body!!!"

check_command_aapt
echo ${AAPT_HOME}
