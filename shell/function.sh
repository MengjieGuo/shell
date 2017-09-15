#!/bin/sh

# 定义一个函数，可以导出供其他shell子进程使用
# 可以接受参数，通过$1 $@ 来获取参数
# $?获取上一个命令或函数的返回值，退出状态


function myfunction(){
	echo $0, $1, $2 # 第0 1 2个参数
	echo $@
	echo "$@"
	echo $*
	echo "$*"
	return 1
}

myfunction parameter1  parameter2;
# echo $?
# 比较整数是否相等，-eq -lt -le -gt -ge 如果想使用 < > >= 必须使用(( $1 > $2))
if [ $? -eq 0 ];
then
	echo "command executed successfully"
else
	echo "command executed unsuccessfully"
fi