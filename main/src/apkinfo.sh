#!/bin/bash
# ****************************************************************************************
#  [脚本标题描述]
#  version    : @version@
#  author     : @author@
#  date       : @date@
#
#  [功能]: 通过命令行查看apk包中的信息
#
#  [执行流程]:
#
#  [传参解析]:
#
#  [环境配置]:
#
# ****************************************************************************************

# 命令版本
APKINFO_VERSION="@version@"
# HomeBrew默认安装目录
BREW_HOME="/usr/local/Cellar/apkinfo/${APKINFO_VERSION}"

######################
# 检测系统是否配置了aapt命令
#     返回值为${AAPT_HOME}
######################
function check_command_aapt() {
    RESULT=`which aapt`
    if [ -z ${RESULT} ] ; then
        if [ -n "${ANDROID_SDK_HOME}" ] ; then
            version=`ls ${ANDROID_SDK_HOME}/build-tools/ | tail -n 1`
            AAPT_HOME=${ANDROID_SDK_HOME}/build-tools/${version}
        elif [ -n "${ANDROID_HOME}" ] ; then
            version=`ls ${ANDROID_HOME}/build-tools/ | tail -n 1`
            AAPT_HOME=${ANDROID_HOME}/build-tools/${version}
        else
            echo "Not find command 'aapt'. Please setup it, or export env variant ANDROID_SDK_HOME"
            exit 1
        fi
    else
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
    value=`${AAPT_HOME}/aapt dump --include-meta-data badging $1 | grep $2 | cut -d " " -f$3 | cut -d = -f2 | cut -d \' -f2`
    echo ${value}
}

######################
# 解析获取Meta-data的值
# $1 apk
# $2 过滤条件
#  Example : aapt dump --include-meta-data badging xxx.apk | grep XXX | cut -d = -f3 | perl -p -e "s/\'//g"
######################
function getValueMeta(){
    value=`${AAPT_HOME}/aapt dump --include-meta-data badging $1 | grep \'$2 | cut -d = -f3 | perl -p -e "s/\'//g"`
    echo ${value}
}

function getAllMetadata(){
    value=(`${AAPT_HOME}/aapt dump --include-meta-data badging ${1} | grep meta-data | cut -d " " -f2-3 | cut -d "'" -f2,4 | sort -u`)
}

# ====================
# 环境参数及类管理
# ====================
# 如果配置文件存在的则读取配置文件，deploy的和brew安装的区别就是不会创建文件夹
if [ ! -d ~/.apkinfo ] ; then
    # 创建配置目录
    mkdir -p ~/.apkinfo
    # 查找命令
    ROOT=`which apkinfo`
    if [ -z ${ROOT} ] ; then
        # brew 安装的在/usr/local/bin/apkinfo的软链。
        echo "[Error] Install failed. To retry invoked deploy.sh or install by brew."
        exit 1
    fi
    # 如果有apkinfo命令，如果是brew安装的他是一个软链，设置为默认安装目录，不排除个人设置
    if [[ ${ROOT} =~ "/usr/local/bin" ]] ; then
        echo "apkinfo.home=${BREW_HOME}/include" > ~/.apkinfo/apkinfo.rc
        ROOT=${BREW_HOME}/include
    fi
else
    # 读取命令所在的目录
    if [ ! -f ~/.apkinfo/apkinfo.rc ] ; then
        echo "[Error] Install failed. To retry invoked deploy.sh or install by brew."
        exit 1
    fi
    ROOT=`cat ~/.apkinfo/apkinfo.rc | grep apkinfo.home | cut -d = -f2-`
fi

# Loading Dependencies
. ${ROOT}/tools/logger.sh
. ${ROOT}/options/apkinfo_options_help.sh
. ${ROOT}/tools/table.sh


printInfo "Hello every body!!!"

check_command_aapt
printInfo "The command 'aapt' be found at ${AAPT_HOME}"

createTable 10 2
addRow "PackageName" `getValue ${APK_FILE} versionName 2`
addRow "VersionName" `getValue ${APK_FILE} versionName 3`
addRow "VersionCode" `getValue ${APK_FILE} versionName 4`
getAllMetadata ${APK_FILE}
for meta in ${value[@]}
do
    addRow "${meta%%\'*}" "${meta#*\'}"
done
printTable