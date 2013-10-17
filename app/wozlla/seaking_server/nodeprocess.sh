cd /home/wozlla/seaking_server
path=/home/wozlla/seaking_server/logs
proc_num=`ps -ef |grep port=4012|grep -v grep|awk '{print $10}'|wc -l`
date=`date +'%Y-%m-%d'`

if [ $proc_num -ge 1 ]
then
	echo `date +'%Y-%m-%d %H:%M:%S'` port=4012 seaking_server running ok! >> $path/process$date.txt
else
	echo `date +'%Y-%m-%d %H:%M:%S'` port=4012 seaking_server is stopped! >> $path/process$date.txt
	nohup /usr/local/bin/node app.js port=4012 seaking_server 2>&1 > /dev/null &
	echo `date +'%Y-%m-%d %H:%M:%S'` port=4012 seaking_server is restart! >> $path/process$date.txt
fi