#!/bin/sh

# echo -e "Enter your password:"
# stty -echo
# read passwd
# stty echo
# echo $passwd

# read -n 4 var
# echo $var
# -t 3s内输入
# -p 提示信息
# -n 最大长度
# -s 不回显输入
# -d 定界符，在此按回车符会当作输入字符
read  -t 30 -p "Enter your message:" -n 10 -s -d : var
echo $var