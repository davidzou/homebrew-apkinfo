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

function deployed() {
    mkdir -p $1/tools
    cp src/apkinfo.sh $1/apkinfo
    cp -r src/tools $1

    chmod 0744 $1/apkinfo

    if [ -d ~/.apkinfo ] ; then
        rm -rf ~/.apkinfo
    fi
    mkdir -p ~/.apkinfo
    echo "apkinfo.home=${1%/*}" > ~/.apkinfo/apkinfo.rc

#    echo "export PATH=\$PATH:$1" >> ~/.bash_profile
#    source ~/.bash_profile

# install man1
#install -g 0 -o 0 -m 0644 apkinfo.1 /usr/share/man/man8/
#gzip /usr/share/man/man8/apkinfo.1
}

if [ -n "$1" ] ; then
    echo "It deployed to $1"
    deployed "$1"
else
    echo "It need a path for install command apkinfo."
fi