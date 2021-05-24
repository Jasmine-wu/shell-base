
#变量默认是全局蝙变量
#函数的申明和调用没有顺序问题
#[[]] bash脚本用于判断 （（））bash脚本用于判断

rand(){
        local seeds=`while read line; do echo ${line// /..} ;done < tmp.txt`
        local count=0
        while [[ $count != 1 ]];do
                seeds=`for sed in $seeds;do (($RANDOM%2)) && echo $sed; done`
                count=`echo "$seeds" | wc -l`
        done

        if [[ $seeds == "" ]]; then
                rand
        else
                echo $seeds
        fi
}

# while true;do
#         sleep 1.5
#         rand

# done


#多人抽奖函数
res() {
        for ((i=0; i<$1;i++));do
                tmp=`rand`
                while [[ `is_repeat $tmp` == 0 ]]; do
                        tmp=`rand`
                done
                arrs[$i]=$tmp
        done
        echo ${arrs[@]}
}

#去重函数
# $1 代表传给函数的第一个参数， $2 代表第二个参数
is_repeat() {
        for arr in ${arrs[@]};do
                if [[ $arr == $1 ]]; then
                        echo 0
                fi
        done
        echo 1
}

#从外部传入第一个参数
res $1
#传入外部输入的第二个参数给res函数
# res $2
