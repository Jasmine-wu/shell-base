a=`curl -s http://testerhome.com/topics | grep -o 'href="/topics/[0-9]*"' | awk -F '"|/' '{print $4}'`
for i in $a; do

        b=`curl -s http://testerhome.com/topics/$i | grep -o -m1 '<span>[0-9]*' | awk -F '>' '{print $2}'`
        if [ -n "$b" ];then

           echo "zan of $i is: "$b
        fi
done

 
