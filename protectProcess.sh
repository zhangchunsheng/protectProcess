cd /home/hacker
path=/home/hacker/logs
proc_num=`ps -ef |grep process info|grep -v grep|awk '{print $10}'|wc -l`
date=`date +'%Y-%m-%d'`

if [ $proc_num -ge 1 ]
then
	echo `date +'%Y-%m-%d %H:%M:%S'` a.php running ok! >> $path/process$date.txt
else
	echo `date +'%Y-%m-%d %H:%M:%S'` a.php is stopped! >> $path/process$date.txt
	nohup /usr/local/php-5.3.6/bin/php a.php 2>&1 > /dev/null &
	echo `date +'%Y-%m-%d %H:%M:%S'` a.php is restart! >> $path/process$date.txt
fi

Comparisons:
-eq	equal to
-ne	not equal to
-lt	less than
-le	less than or equal to
-gt	greater than
-ge	greater than or equal to

File Operations:
-s	file exists and is not empty
-f	file exists and is not a directory
-d	directory exists
-x	file is executable
-w	file is writable
-r	file is readable