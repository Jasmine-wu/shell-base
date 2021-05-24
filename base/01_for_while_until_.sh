#!/bin/bash
# for-do-done
#items=`ls`
#
#for i in $items;do
#  echo "file:"i
#done

for i in $(ls);do
echo file:$i
done

# while-do-done
count=0
while [ $count -lt 10 ]; do
  echo $count
  let count=count+1
done

# until-do-done
count=95
until [ $count -eq 100 ]; do
  echo $count
  let count=count+1
done