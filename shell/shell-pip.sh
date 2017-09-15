#!/bin/sh

# 使用管道连接多个命令（过滤器），获取管道连接命令的输出可以使用子shell和反引用

ls | cat -n > out.txt

cmd_output=$(ls | cat -n)
echo  $cmd_output # echo如何让\n显示为换行

cmd_output=`ls | cat -n`
echo $cmd_output

# 子shell，子shell本身也是独立的进程，可以使用（）操作来定义一个子shell。
cat test.txt
out=$(cat test.txt)
echo $out

out="$(cat test.txt)" # 引号好像没有把子shell的\n保留啊
echo $out

# 在子shell中执行的命令不会对当前shell有影响。
pwd;
(cd /home/; ls);
pwd;
