#!/usr/bin/env bash
# ****************************************************************************************
#  [脚本标题描述] 
#  version    : 1.0.0
#  author     : DavidZou
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
# 可接受的参数缩写
ALIAS_OPTIONS="f:vh"
# 可接受的标准参数
LONG_OPTIONS="apk-file:,language:,version,help"

########################
# 显示帮助内容
#     -- 帮助有文件build_option_help.txt描述
########################
function show_help() {
    print_help_file ${ROOT}/tools/apkinfo_options_help.txt
}

########################
# 初始化参数列表
#    -- 将短参合长参结合使用
########################
function init_option() {
    # 参数
    ARGS="`getopt "$1 --long $2" -- "$@"`"
    if [ $? -ne 0 ] ; then
        show_help
        exit 1
    fi
    set -- ${ARGS}
}

init_option ${ALIAS_OPTIONS} ${LONG_OPTIONS}
if [ $# -gt 0 ] ; then
    # 初始化参数
    while [ $# -gt 0 ] ;
    do
            case "$1" in
                    -f | --apk-file)
                        shift
                        APK_FILE=$1
                        shift
                        ;;
                    --language)
                        # 自定义语言设置
                        ;;
                    -v | --version)
                        echo "apkinfo-${APKINFO_VERSION}"
                        exit 0
                        ;;
                    -h | --help)
                        shift
                        show_help
                        exit 0
                        ;;
                    --)
                        shift
                        ;;
                    *)
                        if [[ "$1" == *'.apk' ]] ; then
                            APK_FILE=$1
                            shift $#
                        else
                            echo "Internal error! Unknown argument that $1."
                            exit 1
                        fi
                        ;;
            esac
    done
else
    show_help
    exit 0
fi