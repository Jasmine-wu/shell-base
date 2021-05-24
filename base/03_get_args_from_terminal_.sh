#!/bin/bash

# 函数内参数传递用 $1 $2 而不是(a,b)
function add(){
#  算数运算推荐用(())
#  c=$(($1+$2))
#  c=$(($1/$2))
#  c=$(($1*$2))
  let c=$1+$2
  echo $c
  echo "dddd"
}

# shell函数调用不需要(),$1接收脚本传入的第一个参数
#add $1 $2

# shell返回值：默认将标准输出也就是echo的内容返回
a=`add $1 $2`
echo $a

# $的意思
echo "script name: "$0
echo "total args: "$#
# $*以字符串形式打印传递给脚本的所有参数
echo "print all args as string: "$*
# 以$IFS为分隔符列出所有的参数
echo "print all args :"$@
echo "last shell command is success or fail: "$?

# 打印当前shell的pid
echo "curent shell pid："$$
