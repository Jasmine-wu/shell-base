# monkey并行测试
# device$ 以device$结尾的行
devices=`adb devices | grep device$ | awk '{print $1}'`
for device in $devices
do
  { nohup adb -s $device shell monkey -p com.xueqiu.android -v -s 20 --pct-syskeys 20 --pct-touch 20 --pct-majornav 10 --throttle 300 200 & }
done
