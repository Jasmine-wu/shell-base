cat 2.txt | awk '{x=x+$3}END{print x}'