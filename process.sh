#!/bin/sh
#!/home/hljlogin/bin
#cd /home/hljlogin
#check source file exists
check_date=`date +%Y%m%d`
file_path="/tmp/monitor/"
cd $file_path
province_name="hlj"
host_name=`hostname`
file_name="pro_mon"
pro_name="java"
diff_file="different"
out_log="pro_mon_log"
Alert_log=$check_date".Warning"
mail_sub=$province_name":"$host_name
#echo $Alert_log
if   [   -e   $file_name   ]
  then
          tmp="$file_name   existed"
else
ps -ef |grep $pro_name|grep -v grep|awk '{print $1,$2,$5,$8,$9}' > $file_path$file_name
fi
ps -ef |grep $pro_name|grep -v grep|awk '{print $1,$2,$5,$8,$9}' > $file_path/pro_mon_tmp
diff $file_name pro_mon_tmp > $diff_file
cat $file_path/pro_mon_tmp > $file_path$file_name
if [[ ! -s $diff_file ]]
then
echo $check_date":This Check is ok,NOT the process of being modified!">>$file_path$out_log
else
cat different > $file_path$Alert_log
echo $check_date":This Check is ok,Some process of being modified,Detailed reference "$Alert_log>>$file_path$out_log
mail -s $mail_sub" process is changed" ruild@lianchuang.com < $Alert_log -- -f pro_mon@QA
fi

###################setup instruction###################
#将monitor.sh 考贝到监控主机上，可以用root部署也可以用普通用户部署；
#修改file_path,pro_name,其他参数可以默认，其中路径名须以"/"结束；
#配置crontab 建议可以每天执行一次；
#mail -s "test" *****@***** < pro_mon_log  -f pro_mon@QA
#crontab -e
#0 8 * * * /tmp/process_monitor/monitor.sh

监控logprocess进程是否存在，存在则打印 ok，不存在则启动该服务，同时打印start ok!.
ps -ef |grep -v 'grep'|grep 'logprocess'|grep '/boss/logprocess/program/logprocess' > /dev/null
if [ $? -eq 0 ]
then
echo logprocess run ok!
else
/boss/logprocess/program/logprocess.sh
echo start ok !
fi
#!/bin/sh

myPath="/var/log/httpd/"
myFile="/var /log/httpd/access.log"

#这里的-x 参数判断$myPath是否存在并且是否具有可执行权限
if [ ! -x "$myPath"]; then
mkdir "$myPath"
fi

#这里的-d 参数判断$myPath是否存在
if [ ! -d "$myPath"]; then
    mkdir "$myPath"
fi

#这里的-f参数判断$myFile是否存在
if [ ! -f "$myFile" ]; then
    touch "$myFile"
fi

#其他参数还有-n,-n是判断一个变量是否是否有值
if [ ! -n "$myVar" ]; then
    echo "$myVar is empty"
    exit 0
fi

#两个变量判断是否相等
if [ "$var1" = "$var2" ]; then
    echo '$var1 eq $var2'
else
    echo '$var1 not eq $var2'
fi