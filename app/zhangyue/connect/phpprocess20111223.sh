info=`ps -ef |grep a.php|grep -v grep|awk '{print $9}'`
date=`date +'%Y-%m-%d'`
if [ $info = 'a.php' ]
then
	echo `date +'%Y-%m-%d %H:%M:%S'` a.php running ok! >> /home/hacker/process$date.txt
else
	echo `date +'%Y-%m-%d %H:%M:%S'` a.php is stopped! >> /home/hacker/process$date.txt
	nohup /usr/local/php-5.3.6/bin/php a.php 2>&1 > /dev/null &
	echo `date +'%Y-%m-%d %H:%M:%S'` a.php is restart! >> /home/hacker/process$date.txt
fi

info=`ps -ef |grep b|grep -v grep|awk '{print $9}'`
date=`date +'%Y-%m-%d'`
if [ $info = 'b' ]
then
	echo `date +'%Y-%m-%d %H:%M:%S'` b.php running ok! >> /home/hacker/process$date.txt
else
	echo `date +'%Y-%m-%d %H:%M:%S'` b.php is stopped! >> /home/hacker/process$date.txt
	nohup /usr/local/php-5.3.6/bin/php b 2>&1 > /dev/null &
	echo `date +'%Y-%m-%d %H:%M:%S'` b.php is restart! >> /home/hacker/process$date.txt
fi

info=`ps -ef |grep c|grep -v grep|awk '{print $9}'`
date=`date +'%Y-%m-%d'`
if [ $info = 'c' ]
then
	echo `date +'%Y-%m-%d %H:%M:%S'` c.php running ok! >> /home/hacker/process$date.txt
else
	echo `date +'%Y-%m-%d %H:%M:%S'` c.php is stopped! >> /home/hacker/process$date.txt
	nohup /usr/local/php-5.3.6/bin/php c 2>&1 > /dev/null &
	echo `date +'%Y-%m-%d %H:%M:%S'` c.php is restart! >> /home/hacker/process$date.txt
fi

info=`ps -ef |grep d|grep -v grep|awk '{print $9}'`
date=`date +'%Y-%m-%d'`
if [ $info = 'd' ]
then
	echo `date +'%Y-%m-%d %H:%M:%S'` d.php running ok! >> /home/hacker/process$date.txt
else
	echo `date +'%Y-%m-%d %H:%M:%S'` d.php is stopped! >> /home/hacker/process$date.txt
	nohup /usr/bin/php d 2>&1 > /dev/null &
	echo `date +'%Y-%m-%d %H:%M:%S'` d.php is restart! >> /home/hacker/process$date.txt
fi