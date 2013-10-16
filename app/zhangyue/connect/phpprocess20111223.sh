info=`ps -ef |grep /usr/local/apache2/htdocs/connect/application/job/update_rabbitMQ_downloadBookInfo.php|grep -v grep|awk '{print $9}'`
date=`date +'%Y-%m-%d'`
if [ $info = '/usr/local/apache2/htdocs/connect/application/job/update_rabbitMQ_downloadBookInfo.php' ]
then
	echo `date +'%Y-%m-%d %H:%M:%S'` update_rabbitMQ_downloadBookInfo.php running ok! >> /usr/local/apache2/htdocs/connect/logs/process$date.txt
else
	echo `date +'%Y-%m-%d %H:%M:%S'` update_rabbitMQ_downloadBookInfo.php is stopped! >> /usr/local/apache2/htdocs/connect/logs/process$date.txt
	nohup /usr/local/php-5.3.6/bin/php /usr/local/apache2/htdocs/connect/application/job/update_rabbitMQ_downloadBookInfo.php 2>&1 > /dev/null &
	echo `date +'%Y-%m-%d %H:%M:%S'` update_rabbitMQ_downloadBookInfo.php is restart! >> /usr/local/apache2/htdocs/connect/logs/process$date.txt
fi

info=`ps -ef |grep /usr/local/apache2/htdocs/connect/application/job/update_rabbitMQ_rechargingInfo.php|grep -v grep|awk '{print $9}'`
date=`date +'%Y-%m-%d'`
if [ $info = '/usr/local/apache2/htdocs/connect/application/job/update_rabbitMQ_rechargingInfo.php' ]
then
	echo `date +'%Y-%m-%d %H:%M:%S'` update_rabbitMQ_rechargingInfo.php running ok! >> /usr/local/apache2/htdocs/connect/logs/process$date.txt
else
	echo `date +'%Y-%m-%d %H:%M:%S'` update_rabbitMQ_rechargingInfo.php is stopped! >> /usr/local/apache2/htdocs/connect/logs/process$date.txt
	nohup /usr/local/php-5.3.6/bin/php /usr/local/apache2/htdocs/connect/application/job/update_rabbitMQ_rechargingInfo.php 2>&1 > /dev/null &
	echo `date +'%Y-%m-%d %H:%M:%S'` update_rabbitMQ_rechargingInfo.php is restart! >> /usr/local/apache2/htdocs/connect/logs/process$date.txt
fi

info=`ps -ef |grep /usr/local/apache2/htdocs/connect/application/job/update_zy_monthpay.php|grep -v grep|awk '{print $9}'`
date=`date +'%Y-%m-%d'`
if [ $info = '/usr/local/apache2/htdocs/connect/application/job/update_zy_monthpay.php' ]
then
	echo `date +'%Y-%m-%d %H:%M:%S'` update_zy_monthpay.php running ok! >> /usr/local/apache2/htdocs/connect/logs/process$date.txt
else
	echo `date +'%Y-%m-%d %H:%M:%S'` update_zy_monthpay.php is stopped! >> /usr/local/apache2/htdocs/connect/logs/process$date.txt
	nohup /usr/local/php-5.3.6/bin/php /usr/local/apache2/htdocs/connect/application/job/update_zy_monthpay.php 2>&1 > /dev/null &
	echo `date +'%Y-%m-%d %H:%M:%S'` update_zy_monthpay.php is restart! >> /usr/local/apache2/htdocs/connect/logs/process$date.txt
fi

info=`ps -ef |grep /var/www/html/zybook/job/update_rabbitMQ_userInfo.php|grep -v grep|awk '{print $9}'`
date=`date +'%Y-%m-%d'`
if [ $info = '/var/www/html/zybook/job/update_rabbitMQ_userInfo.php' ]
then
	echo `date +'%Y-%m-%d %H:%M:%S'` update_rabbitMQ_userInfo.php running ok! >> /usr/local/apache2/htdocs/connect/logs/process$date.txt
else
	echo `date +'%Y-%m-%d %H:%M:%S'` update_rabbitMQ_userInfo.php is stopped! >> /usr/local/apache2/htdocs/connect/logs/process$date.txt
	nohup /usr/bin/php /var/www/html/zybook/job/update_rabbitMQ_userInfo.php 2>&1 > /dev/null &
	echo `date +'%Y-%m-%d %H:%M:%S'` update_rabbitMQ_userInfo.php is restart! >> /usr/local/apache2/htdocs/connect/logs/process$date.txt
fi