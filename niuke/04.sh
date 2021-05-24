cat test6.txt |awk -F " "  '{
    count=0;
    for(i=1;i<=NF;i++){
        if($i>=0&&$i<=5) count++
    } sum+=count;
    print count
}END{print "sum is:" sum}'
#cat test6.txt

