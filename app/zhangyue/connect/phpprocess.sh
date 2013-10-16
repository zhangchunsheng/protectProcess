cd /home/hacker
path=/home/hacker/logs
info=`ps -ef |grep a.php|grep -v grep|awk '{print $9}'`
date=`date +'%Y-%m-%d'`
if [ $info = 'a.php' ]
then
	echo `date +'%Y-%m-%d %H:%M:%S'` a.php running ok! >> $path/process$date.txt
else
	echo `date +'%Y-%m-%d %H:%M:%S'` a.php is stopped! >> $path/process$date.txt
	nohup /usr/local/php-5.3.6/bin/php a.php 2>&1 > /dev/null &
	echo `date +'%Y-%m-%d %H:%M:%S'` a.php is restart! >> $path/process$date.txt
fi

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

info=`ps -ef |grep b.php|grep -v grep|awk '{print $9}'`
date=`date +'%Y-%m-%d'`
if [ $info = 'b.php' ]
then
	echo `date +'%Y-%m-%d %H:%M:%S'` b.php running ok! >> $path/process$date.txt
else
	echo `date +'%Y-%m-%d %H:%M:%S'` b.php is stopped! >> $path/process$date.txt
	nohup /usr/local/php-5.3.6/bin/php b.php 2>&1 > /dev/null &
	echo `date +'%Y-%m-%d %H:%M:%S'` b.php is restart! >> $path/process$date.txt
fi

info=`ps -ef |grep c.php|grep -v grep|awk '{print $9}'`
date=`date +'%Y-%m-%d'`
if [ $info = 'c.php' ]
then
	echo `date +'%Y-%m-%d %H:%M:%S'` c.php running ok! >> $path/process$date.txt
else
	echo `date +'%Y-%m-%d %H:%M:%S'` c.php is stopped! >> $path/process$date.txt
	nohup /usr/local/php-5.3.6/bin/php c.php 2>&1 > /dev/null &
	echo `date +'%Y-%m-%d %H:%M:%S'` c.php is restart! >> $path/process$date.txt
fi

cd /home/hacker
info=`ps -ef |grep d.php|grep -v grep|awk '{print $9}'`
date=`date +'%Y-%m-%d'`
if [ $info = 'd.php' ]
then
	echo `date +'%Y-%m-%d %H:%M:%S'` d.php running ok! >> $path/process$date.txt
else
	echo `date +'%Y-%m-%d %H:%M:%S'` d.php is stopped! >> $path/process$date.txt
	nohup /usr/bin/php d.php 2>&1 > /dev/null &
	echo `date +'%Y-%m-%d %H:%M:%S'` d.php is restart! >> $path/process$date.txt
fi

cd /home/hacker
proc_name=`ps -ef |awk '{print $9}'|grep d.php|grep -v grep|wc -l`

date=`date +'%Y-%m-%d'`

if [ $proc_num -ge 1 ]
then
	echo `date +'%Y-%m-%d %H:%M:%S'` d.php running ok! >> $path/process$date.txt
else
	echo `date +'%Y-%m-%d %H:%M:%S'` d.php is stopped! >> $path/process$date.txt
	nohup /usr/bin/php d.php 2>&1 > /dev/null &
	echo `date +'%Y-%m-%d %H:%M:%S'` d.php is restart! >> $path/process$date.txt

fi