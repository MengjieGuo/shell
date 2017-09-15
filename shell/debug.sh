#!/bin/sh

# _DEBUG=on sh debug.sh
# 如果直接sh debug.sh那么不会显示DEBUG echo $i的信息，只会显示echo 1
# ：告诉shell什么也不做

function DEBUG(){
	[ "$_DEBUG" == "on" ] && $@ || :
}
for i in {1..10}
do 
	DEBUG echo $i
	echo 1
done