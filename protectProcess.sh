cd /home/hacker
path=/home/hacker/logs
proc_num=`ps -ef |awk '{print $9}'|grep a.php|grep -v grep|wc -l`
date=`date +'%Y-%m-%d'`

if [ $proc_num -ge 1 ]
then
	echo `date +'%Y-%m-%d %H:%M:%S'` a.php running ok! >> $path/process$date.txt
else
	echo `date +'%Y-%m-%d %H:%M:%S'` a.php is stopped! >> $path/process$date.txt
	nohup /usr/local/php-5.3.6/bin/php a.php 2>&1 > /dev/null &
	echo `date +'%Y-%m-%d %H:%M:%S'` a.php is restart! >> $path/process$date.txt
fi