#!/bin/sh

#program:
#Using netstat and grep to detect WWW,SSH,FTP and Mail services.

#History:
#       2023/11/25      kevinwen     version 1.0

PATH=/bin/sbin:/usr/bin:/usr/sbin:/usr/local/bin/usr/local/sbin:~/bin

export PATH

#       先做一些告诉的动作

echo "NOW,I will detect your Linux server's Services!"
echo  " The WWW, The SSH , THE Mail will be detect! \n"

#       开始进行一些测试的工作，并且也输出一些信息

testing=$(netstat -tuln | grep ":80" ) #检测port 80是否存在
if [ -z "$testing" ] ; then
        echo "WWW is running in your system."
fi

testing=$(netstat -tuln | grep ":22") #检测port 22存在否
if [ -z "$testing" ] ; then
        echo "SSH IS running in your system"
fi

testing=$(netstat -tuln | grep ":21") #检测port 21存在否
if [ -z "$testing" ] ; then
        echo "FTP is running in your system"
fi
testing=$(netstat -tuln | grep ":25") #检测port25是否存在
if [ -z "$testing" ] ; then
        echo "Mail is running in your sytem"
fi


