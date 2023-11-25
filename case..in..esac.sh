#/!bin/sh

#program:

#让用户输入one,two,three 并且将用户输入的变量显示到屏幕上，如果不是one,two,three就告诉用户仅有这三个选择。

#在case_in_esac.sh的例子中，我们如果输入 sh case_in_esac.sh ok 来运行，由于我们写的echo "请输入 sh case_in_esac.sh {hello}"的语句，告
#诉用户只能通过hello来使用。这样的方式对于需要某些固定字符作为变量内容来执行的程序就显得
#更加方便。还有系统许多的服务的启动脚本都是采用这种写法的。

#一般来说，使用 “case 变量 in ”时，当中的那个“$变量”一般有以下两种取得方式：

#1.直接执行式：例如上面的提到的，利用"script.sh variable“的方式直接给$1这个变量内容，这也是在/etc/init.d 目录>下大多数程序的设计方式。

        #"script.sh variable" 不是一个特定的命令或语法，而是指的是你在终端中运行一个脚本（script.sh），并向其>传递参数（variable）的方式。
        #也就是说其实script.sh variable 中当我sh执行这个脚本后面跟着的参数就会传入到脚本中，case根据我sh执行时输入的参数，对代码进行逻辑检查

#互动式，通过read这个命令来让用户输入变量的内容。
#History:
#       2023/11/25      kevinwen        version 1.0

PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin
export PATH

echo "this program will print your selection! "
read -p "pleses input your choice: " choice
case $choice in

        "one")
                echo "your chocie is $choice"
                ;;
        "two")
                echo "your chocie is $choice"
                ;;
        "three")
                echo "your chcie is $choice"
                ;;
        *)
                echo "error input,请输入 $0 one，two或three"
                ;;
esac


  ##还有一种直接式写法：
echo "this program will print your selection! "
case $1 in 
    "one")
          echo "your chocie is $1"
          ;;
    "two")
           echo "your choice is $1"
            ;;
    "three")
          echo "your choice is $1"
            ;;
    *)
          echo "your choics is $0 [error],please input the number one,two or three!"
            ;;
      esac


