
#!/bin/sh

#program:
# same as the sh06.sh
#history:
#       2023/11/25 wmt version 1.0
# the complex if..elif..elif.. else 
PATH=/bin/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin
export PATH
read -p "please input you choice Y/N" yn
if [ "$yn" == "Y" ] || [ "$yn" == "y" ]  ; then            #用；把then分割开；
                                                           #在if和elif中间不需要exit 0；
        echo "i gota your choice,let's continue!"               


elif [ "$yn" == "N" ] || [ "$yn" == "n" ] ; then         #if和else中间使用elfi，
        echo " ok,we will stop it!" 

else
        echo "i don't know what choice is your"                 
                                                        #不需要在fi前使用exit 0 
fi
~          
