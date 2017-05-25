#!/usr/bin/env bash
# ****************************************************************************************
#  [脚本标题描述] 
#  version    : 1.0.0
#  author     : davidzou
#  date       : 2017.05.22
#
#  [功能]:
#
#  [执行流程]:
#           init 5*5
#  [传参解析]:
#
#  [环境配置]:
#
# ****************************************************************************************

# 行数
row_num=0
# 当前添加的
current_row_num=0

# 列数(固定不可变)
column_num=0

# 所有单元格内容
All_CELLS=()
# 所有数据下标
index=0

WIDTH=()

# 创建表 设置给定的行和列
function createTable(){
#    echo "$1 * $2"
    row_num=$1
    column_num=$2
}

function addRow(){
    # 给定的参数和列数不相等
    if (( $# != ${column_num} )) ; then
        echo "Column member need $column_num"
        return 1
    fi

    # 将每个单元格填充
    for cell in $@
    do
#        echo $index $cell
        All_CELLS[$index]=${cell}
        index=`expr ${index} + 1`
    done

    # 行数可增加
    current_row_num=`expr ${current_row_num} + 1`
    if (( $current_row_num != row_num )); then
        row_num=${current_row_num}
    fi
#    echo "${row_num}*${column_num}(${current_row_num})"
}

#function addEmptyLine(){
#    for ((i=0;i<$column_num;i++))
#    do
#        All_CELLS[$index]=""
#        index=`expr ${index} + 1`
#    done
#
#    current_row_num=`expr ${current_row_num} + 1`
#    if (( $current_row_num != row_num )); then
#        row_num=${current_row_num}
#    fi
#}

function try(){
    echo ""
}

function drawLine() {
    if [ $# != $column_num ]; then
        echo "Can't draw line by $@ argument, it current is $column_num."
        exit 1
    fi
    LINE_TOP=""
    LINE_CONTENT=""
    INNER=($*)
    COMPLEMENT=0
    for ((k=0;k<$#;k++))
    do
        cell=${INNER[k]}
        len=$(printf "%-${#cell}s" "-")
        if (( ${#WIDTH[k]} < ${#len} )) ; then
            WIDTH[k]=${len}
            # 重新计算
            k=0
            return 2
        else
            COMPLEMENT=`expr ${#WIDTH[k]} - ${#len}`
        fi
        LINE_TOP+="+-${WIDTH[k]// /-}-"
        LINE_CONTENT+="| ${cell} `printf "%${COMPLEMENT}s"`"
    done

    LINE_TOP="$LINE_TOP+"
    LINE_CONTENT="$LINE_CONTENT|"
}

function printTable(){
    ROWS=()
    for ((i=0;i<$row_num;i++))
    do
        LINE=()
        for ((j=0;j<${column_num};j++))
        do
            index=`expr $[$column_num*$i] + $j`
            LINE[j]=${All_CELLS[$index]}
        done
        drawLine ${LINE[@]}
        if [ $? == 2 ] ; then
            i=-1
            j=-1
            ROWS=()
            continue
        else
            ROWS[i*2]="${LINE_TOP}"
            ROWS[i*2+1]="${LINE_CONTENT}"
        fi
    done

    for ((i=0;i<${#ROWS[@]};i++))
    do
        echo "${ROWS[i]}"
    done
    echo "$LINE_TOP"
}

#createTable 5 3
##echo ${row_num}
#
#addRow $*
#addRow d e f
#addRow $*
##addEmptyLine
#addRow j k l
##addRow $*
##addRow $*
#
#commit
#
#echo "${row_num} * ${column_num}"
