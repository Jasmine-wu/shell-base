# while true
# do
# 	read -p "please input: " a
# 	if [ $a == "quit" ];then
# 		break
# 	fi
# done

# read -p "please input a number: " a
# read -p "please input a number: " b
# awk "BEGIN{print \"$a\"/\"$b\"}"

# awk 'BEGIN{print 2/3}'

# pid=`ps -ef | grep chrome |grep -v "grep" | awk '{print $2}'`
# pid=14774
# for i in $(seq 1 20);do
# 	# time=`date +%H:%M:%S`
	# info=`ps -o %cpu -o %mem $pid | tail -1`
# 	time=$(date +%H:%M:%S)
	# info=$(ps -o %cpu -o %mem $pid | tail -1)
# 	echo $time $info
# 	sleep 1
# done

# while true;do
# 	cpu=`ps -o %cpu $pid | tail -1`
# 	men=`ps -o %mem $pid | tail -1`
# 	time=`time %H%M%S`
# 	sleep 0.2
#  done

# 压测
# while true; do
	
# 	count=$(jobs -l | grep -i running | wc -l)
# 	[[ $count -le 5 ]] && { time curl https://testerhome.com/topics/27823 &>${PWD}/Desktop/test/tmp/tmp & } || echo $count waiting

# done


# 自动遍历
# click(){
# 	adb shell input tap
#  $( 
#  	adb shell "uiautomator dump --compressed && cat /sdcard/window_dump.xml" | 
#  	sed 's/<node/^<node/g' | 
#  	awk 'BEGIN{RS="^"}{print $0}' | 
#  	grep "$1" echo $1 |
#  	awk -F '\\[|\\,|\\]' '{print $2,$3,$5,$6}' |
#  	awk '{print $1+($3-$1)/2,$2+($4-$2)/2}' 
#  	)
# }

# click 我的

# find | while read file; do
# 	mv $file $file123
# done

for i in $(seq 20);
 do
	ps -o %mem -p 10734 | tail -1
	sleep 1
done | awk '{t+=$1;print $1,t/NR}'


# 用top获取某个进程的CPU和内存并打印平均值：

top -d 1 -n 20 -b -p 13229 | grep --line-buffered  ^13229 | awk '{c+=$9;m+=$10}{print $9, $10,c/NR,m/NR}'


while true ; do
ps -e -p 1470
sleep 1
done

for i in $(seq 20); do
	adb shell dumpsys meminfo com.xueqiu.android | grep "Dalvik Heap" | awk '{print $4}'
	sleep 1
done | gnuplot -e "set terminal dumb ;plot '<cat' using 1 with line"

