#!/bin/sh

# true是作为一个／bin二进制文件存在，如果使用wile ture，就会生成很多的子进程，子进程炸弹。
# 使用：就好多了，什么也不做，并且返回状态吗0 

# repeate()
# {
# 	i=0
# 	while [ $i -lt 3 ] 
# 	do
# 		$@ && return;
# 		sleep 3
# 		i ++
# 	done
# }

