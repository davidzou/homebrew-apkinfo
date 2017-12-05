#!/usr/bin/env bash
# ****************************************************************************************
#  [脚本标题描述] 这里只是一个单元测试脚本
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

. /Users/davidzou/Developer/workspace/github/apkinfo/main/src/tools/table.sh

createTable 5 3
#echo ${row_num}

#addRow $*
addRow dec ef fsseedd
#addRow $*
#addEmptyLine
addRow jkdjeidjeu ksj lse

addRow jkdjeidu ks ls
#addRow $*
#addRow $*

time printTable

echo "${row_num} * ${column_num}"