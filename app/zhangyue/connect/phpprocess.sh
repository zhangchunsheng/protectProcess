cd /usr/local/apache2/htdocs/connect/application/job/
path=/usr/local/apache2/htdocs/connect/logs
info=`ps -ef |grep update_rabbitMQ_downloadBookInfo.php|grep -v grep|awk '{print $9}'`
date=`date +'%Y-%m-%d'`
if [ $info = 'update_rabbitMQ_downloadBookInfo.php' ]
then
	echo `date +'%Y-%m-%d %H:%M:%S'` update_rabbitMQ_downloadBookInfo.php running ok! >> $path/process$date.txt
else
	echo `date +'%Y-%m-%d %H:%M:%S'` update_rabbitMQ_downloadBookInfo.php is stopped! >> $path/process$date.txt
	nohup /usr/local/php-5.3.6/bin/php update_rabbitMQ_downloadBookInfo.php 2>&1 > /dev/null &
	echo `date +'%Y-%m-%d %H:%M:%S'` update_rabbitMQ_downloadBookInfo.php is restart! >> $path/process$date.txt
fi

cd /usr/local/apache2/htdocs/connect/application/job/
path=/usr/local/apache2/htdocs/connect/logs
proc_num=`ps -ef |awk '{print $9}'|grep update_rabbitMQ_downloadBookInfo.php|grep -v grep|wc -l`
date=`date +'%Y-%m-%d'`

if [ $proc_num -ge 1 ]
then
	echo `date +'%Y-%m-%d %H:%M:%S'` update_rabbitMQ_downloadBookInfo.php running ok! >> $path/process$date.txt
else
	echo `date +'%Y-%m-%d %H:%M:%S'` update_rabbitMQ_downloadBookInfo.php is stopped! >> $path/process$date.txt
	nohup /usr/local/php-5.3.6/bin/php update_rabbitMQ_downloadBookInfo.php 2>&1 > /dev/null &
	echo `date +'%Y-%m-%d %H:%M:%S'` update_rabbitMQ_downloadBookInfo.php is restart! >> $path/process$date.txt
fi

info=`ps -ef |grep update_rabbitMQ_rechargingInfo.php|grep -v grep|awk '{print $9}'`
date=`date +'%Y-%m-%d'`
if [ $info = 'update_rabbitMQ_rechargingInfo.php' ]
then
	echo `date +'%Y-%m-%d %H:%M:%S'` update_rabbitMQ_rechargingInfo.php running ok! >> $path/process$date.txt
else
	echo `date +'%Y-%m-%d %H:%M:%S'` update_rabbitMQ_rechargingInfo.php is stopped! >> $path/process$date.txt
	nohup /usr/local/php-5.3.6/bin/php update_rabbitMQ_rechargingInfo.php 2>&1 > /dev/null &
	echo `date +'%Y-%m-%d %H:%M:%S'` update_rabbitMQ_rechargingInfo.php is restart! >> $path/process$date.txt
fi

info=`ps -ef |grep update_zy_monthpay.php|grep -v grep|awk '{print $9}'`
date=`date +'%Y-%m-%d'`
if [ $info = 'update_zy_monthpay.php' ]
then
	echo `date +'%Y-%m-%d %H:%M:%S'` update_zy_monthpay.php running ok! >> $path/process$date.txt
else
	echo `date +'%Y-%m-%d %H:%M:%S'` update_zy_monthpay.php is stopped! >> $path/process$date.txt
	nohup /usr/local/php-5.3.6/bin/php update_zy_monthpay.php 2>&1 > /dev/null &
	echo `date +'%Y-%m-%d %H:%M:%S'` update_zy_monthpay.php is restart! >> $path/process$date.txt
fi

cd /var/www/html/zybook/job/
info=`ps -ef |grep update_rabbitMQ_userInfo.php|grep -v grep|awk '{print $9}'`
date=`date +'%Y-%m-%d'`
if [ $info = 'update_rabbitMQ_userInfo.php' ]
then
	echo `date +'%Y-%m-%d %H:%M:%S'` update_rabbitMQ_userInfo.php running ok! >> $path/process$date.txt
else
	echo `date +'%Y-%m-%d %H:%M:%S'` update_rabbitMQ_userInfo.php is stopped! >> $path/process$date.txt
	nohup /usr/bin/php update_rabbitMQ_userInfo.php 2>&1 > /dev/null &
	echo `date +'%Y-%m-%d %H:%M:%S'` update_rabbitMQ_userInfo.php is restart! >> $path/process$date.txt
fi

cd /var/www/html/zybook/job/
proc_name=`ps -ef |awk '{print $9}'|grep update_rabbitMQ_userInfo.php|grep -v grep|wc -l`

date=`date +'%Y-%m-%d'`

if [ $proc_num -ge 1 ]
then
	echo `date +'%Y-%m-%d %H:%M:%S'` update_rabbitMQ_userInfo.php running ok! >> $path/process$date.txt
else
	echo `date +'%Y-%m-%d %H:%M:%S'` update_rabbitMQ_userInfo.php is stopped! >> $path/process$date.txt
	nohup /usr/bin/php update_rabbitMQ_userInfo.php 2>&1 > /dev/null &
	echo `date +'%Y-%m-%d %H:%M:%S'` update_rabbitMQ_userInfo.php is restart! >> $path/process$date.txt

fi