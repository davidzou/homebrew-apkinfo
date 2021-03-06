#!/usr/bin/env bash
# ****************************************************************************************
#  [脚本标题描述] 
#  version    : @version@
#  author     : @author@
#  date       : @date@
#
#  [功能]:    提供apkinfo参数选项
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
LONG_OPTIONS="apk-file:,language:,version,help,pull"

########################
# 显示帮助内容
#     -- 帮助有文件build_option_help.txt描述
########################
function show_help() {
    print_help_file "${ROOT}/options/apkinfo_options_help.txt"
}

########################
# 初始化参数列表
#    -- 将短参合长参结合使用
########################
function init_option() {
    # 参数
    ARGS="`getopt "$1 --long $2" -- "$@"`"
    if [[ $? -ne 0 ]] ; then
        show_help
        exit 1
    fi
    set -- ${ARGS}
}

init_option ${ALIAS_OPTIONS} ${LONG_OPTIONS}
if [[ $# -gt 0 ]] ; then
    # 初始化参数
    while [[ $# -gt 0 ]] ;
    do
            case "$1" in
                    -f | --apk-file)
                        MODE="INFO"
                        shift
                        APK_FILE=$1
                        shift
                        ;;
                    --language)
                        # 自定义语言设置
                        # I don't known what i do at that times.
                        ;;
                    -v | --version)
                        echo "apkinfo-${APKINFO_VERSION}"
                        echo "DavidZou -- wearecisco@gmail.com"
                        exit 0
                        ;;
                    -h | --help)
                        shift
                        show_help
                        exit 0
                        ;;
                    --pull)
                        MODE="PULL"
                        shift
                        if [[ -z $1 ]] || [[ "$1" == "list" ]] ; then
                            # 查看安装包列表
                            adb shell pm list packages -f -3
                            exit 0
                        else
                            # pull package name
                            PACKAGE_NAME=$1
                            shift
                            # 如果不存在则报错
                            result=`adb shell pm list packages -f -3 \| grep ${PACKAGE_NAME}`
                            if [[ -z ${result} ]] ; then
                                printError "The app '${PACKAGE_NAME}' not exist."
                                exit 0
                            fi
                            # package:/data/app/com.google.android.instantapps.supervisor-2/base.apk=com.google.android.instantapps.supervisor

                            path=`echo ${result%=*} | cut -d ":" -f2`
                            name=`echo ${result##*=}.apk`
                            adb pull ${path} ${name}
                            exit 0
                        fi
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

if [[ ! -z ${PACKAGE_NAME} ]] ; then
    # enable support pull and exec adb pull, and how to output it
    printInfo "xxx ${PACKAGE_NAME}"
fi