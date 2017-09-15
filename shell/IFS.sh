#!/bin/sh

# 内部字段分隔符，$item在每次迭代过程中把由逗号分隔的字串作为变量值。

data="name,sex,follno,location"
oldIFS=$IFS
IFS=','

for item in $data;
do
	echo Item: $item
done

IFS=$oldIFS


line="www.guo.org:x:1001:1001::/home/www.guo.org:/bin/bash"
oldIFS=$IFS
IFS=':'
count=0

for item in $line; # 是分号
do
	[ $count -eq 0 ] && user=$item;
	[ $count -eq 6 ] && shell=$item;
	let count++
	# count=$[ $count + 1 ] 
done
IFS=$oldIFS
echo $user\'s shell is $shell
