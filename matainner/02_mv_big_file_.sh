#!bin/bash
# 编写个shell脚本将/home/test 目录下大于10K的文件转移到/tmp目录下
#  integer expression expected:报错 file_size是一个字符串
# 解决方案，用awk的返回结果比较
# grep '^-' 文件 '^d'目录
for file in `ls -l | grep '^-' | awk '{if($5>500) print $9}'`;do
  mv $file ./test
#  if [ -f $file ]; then
#    echo $file
#    echo `ls -l $file`
#    file=`ls -l $i | awk '{if($5>400) print $9}'`
#    echo $file
#    if [ $file_size -lt 10240 ];then
#      echo "xxxx"
#    fi
#  fi
done