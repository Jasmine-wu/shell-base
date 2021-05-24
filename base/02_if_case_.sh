# if 语法如何嵌套
#!/bin/bash
a=50
b=50
# if-then-else-fi
if [ $a -gt $b ]; then
  echo "a > b"
else
  echo " a < b"
fi

# if-then-elif-then-fi
if [ $a -gt $b ]; then
  echo "a > b"
elif [ $a -lt $b ]; then
  echo "a < b"
elif [ $a -eq $b ]; then
  echo "a == b"
fi


# case
read input
case $input in
1) echo "run";;
2) echo "eat";;
3) echo "dance";;
esac