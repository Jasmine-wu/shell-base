#for i in `seq 0 7 500`;do
#   echo $i
#done

# 打印7的倍数
#for i in $(seq 0 7 500);do
#   echo $i
#done
#
#for ((i=0; i<=500; i+=7));do
#  echo $i
#done

#写一个 bash脚本以统计一个文本文件 nowcoder.txt中字母数小于8的单词。

# 将一整行看作一个单词
#cat test4.rtf | sed '/^\s*$/d' | while read line
#do
#    if [ ${#line} -lt 8 ]; then
#        echo $line
#    fi
#done
#
## 遍历文本里每个单词
#for i in `cat test4.rtf | sed  '/^\s*$/d' `;do
#  echo $i
#  if [ ${#i} -lt 8 ];then
#    echo ${i}
#  fi
#done


cat test4.rtf | awk '{
  for(i=1;i<=NF;i++){
    if (length($i)<8) print $i
  }
}'