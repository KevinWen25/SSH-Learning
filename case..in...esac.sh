#/!bin/sh

#program:       
#假如有多个既定的变量内容，例如sh09.sh当中，所需要的就是hello和空字符两个，那么这时只要针对这两个变量来设置情>况即可，这时用case....in....esac最为方便。

#History:
#       2023/11/25      kevinwen        version 1.0

#        case...in...esac的基础框架结构：
#        case $变量名称 in                      <-关键字为case,变量前有$符号
#        "第一个变量内容")                      <-每个变量内容建议使用双引号括起来，关键字则为小括号
#                程序段 
#                ;;                                     <-每个类别的结尾使用两个;;
#
#        *)                                     <-最后一个变量的内容都会用*来代表其他所有值。
#               不包含第一个变量内容与第二个变量内容的其他程序运行段
#               exit 1
#               ;;
#       esac                                    <-最早的esac结尾。
#以下我们将sh09.sh的案例进行修改：
PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin
export PATH

case $1 in
        "hello")
                echo "hello,how are you?"
        ;;
"") #这里的""表示当用户输入为空字符时，执行下面的代码
                echo "you must input parameters, 比如: sh $0 hello "
        ;;
*) #这里的*就相当于通配符，0～无穷多个任意字符的意思
                echo " 请输入 $0 {hello}"
        ;;
esac

