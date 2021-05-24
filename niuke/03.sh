#写一个 bash脚本以统计一个文本文件 nowcoder.txt 中每个单词出现的个数。
#
#为了简单起见，你可以假设：
#nowcoder.txt只包括小写字母和空格。
#每个单词只由小写字母组成。
#单词间由一个或多个空格字符分隔。

cat test4.rtf|awk '{
    for(i=1;i<=NF;i++){
      voc[$i]++
      print voc[$i]
      }

} END{
}'
#    for(w in voc){print w" "voc[w]}

# k2第二列
# n 数值
# r 反向排序