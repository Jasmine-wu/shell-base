
# 连接字符串
a="hello"
b="world"
echo $a$b
echo ${a}${b}

# -z 判断字符串是不是空串
[ -z "" ] && echo "是空串" || echo "不是空串"

# -n 判断字符串是不是非空串
[ -n "" ] && echo "不是空串" || echo "是空串"

# 判断字符串是不是以xx开头
# 注意判断不是不是用-gt -z等，==要用[[]]括号
if [[ $a == he* ]];then
  echo $a"是以he开头"
fi

# 判断字符串是不是xx，即判断字符串是否为空
# == 专用于字符串比较
if [[ $a == "he*" ]];then
  echo $a"是he*"
else
  echo  $a"不是he*"
fi

# 获取字符串的一部分:${str:x:y}
# x起始位置，y长度
echo ${a:0:2}

# 省略长度,从第三个开始截取到末尾
echo ${a: 2}

# 打印变量最后2个字符
stra="mynameis jasmine"
echo ${stra: -5}
echo ${stra:-5} # stra没值就给它赋值-5，有值否则直接打印stra

## 截取字串右边的#/##
#str="hellowmyworld"
## #表示截取开始*任意字符直到o
#echo ${str#*o} #wmyworld
#echo ${str#hello} #wmyworld
## 匹配最后一个##
#echo ${str##*o} #rld
#
## 截掉右边的
#echo ${str%o*} #hellowmyw
#echo ${str%%o*} #hell
#
##如何只用echo命令获取/home/dir
#variable="User:123:321:/home/dir"
##
#echo ${variable##*:}
##
###如何从上面的字符串中获取 “User” ?
#echo ${variable%%:*}
##
###如何去除字符串中的所有空格 ?
#str2="hello world my friend"
##删除空格 // 所有
#echo ${str2// /} # helloworldmyfriend
#echo $str2 | tr -d " "
#
#echo ${str2/o/O} # hellO world my friend
#echo ${str2//o/O} # hellO wOrld my friend
echo $str2 | tr "o" "O"

##不用 wc 命令如何计算字符串中的单词数目 ?
len="xxxxx99999"
echo ${#len}

## 获取变量长度 $#
#echo ${#variable}
#
#
## 整数相加
#c=10
#d=100
## let
#let e=$c+$d
#echo $e
## $(())
#echo $((c+d))


#name=John && echo 'My name is $name'
#echo ${new:-variable}

