#!/bin/sh

#program:
#this program use the if..then to show the users'choice

#history:
#       2023/11/25 wmt version: 1.0
PATH=/bin/sbin:/usr/bin:/usr/sbin:/usr/local/sbin:/usr/local/bin
export PATH

read -p "please input your choice （Y/N)" yn
if [ "$yn" == "Y" ] || [ "$yn" == "y" ] ; then  #||相当于or，&&相当于and
        echo "ok,continue"                      #一般if[条件判断] ;then... 
                                                        #执行...
                                                #fi 表示if结束。        
        exit 0
fi

if [ "$yn" == "N" ] || [ "$yn" == "n" ] ; then
        echo "Oh,stop!!!"
        exit 0
fi
echo ' i don't know what your choice is " && exit 0 

#

#
