#!/bin/bash
rand(){
# 处理姓名中的空格-》$语法 ${// /..} 把空格替换成..

#c从文件中读取所有人
	local seeds=`while read line; do echo ${line// /..} ;done < tmp.txt`
	# $seeds  以行的形式展示，“$seeds”以列的形式进行展示
	# echo $seeds

	local count=0
	#bash默认是全局变量，加local会变成局部变量

	# 不停筛选，直到只剩一个人为止
	# 语法严格，空格要对，不然会报错
	while [[ $count != 1 ]]; do
		# echo $count
		#从seeds中筛选部分人
		#猜拳：$RANDOM%2 随机数对2取余,结果要么0，要么1
		#0 && 后面的不执行 1 && 后面的才会执行
		seeds=`for seed in $seeds;do (($RANDOM%2)) && echo $seed;done`
		# echo $seeds

		# echo $seeds
		 #就按当前筛选到的人数
		count=`echo "$seeds" | wc -l` 

	done
	# echo $seeds


	if [[ $seeds == "" ]];then
		rand
	else
		echo $seeds
	fi

}
rand

