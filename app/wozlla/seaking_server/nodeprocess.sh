cd /home/hacker
path=/home/hacker/logs
proc_num=`ps -ef |grep port=4012|grep -v grep|awk '{print $10}'|wc -l`
date=`date +'%Y-%m-%d'`

if [ $proc_num -ge 1 ]
then
	echo `date +'%Y-%m-%d %H:%M:%S'` seaking_server port=4012 running ok! >> $path/process$date.txt
else
	echo `date +'%Y-%m-%d %H:%M:%S'` seaking_server port=4012 is stopped! >> $path/process$date.txt
	nohup node app.js 2>&1 > /dev/null &
	echo `date +'%Y-%m-%d %H:%M:%S'` seaking_server port=4012 is restart! >> $path/process$date.txt
fi