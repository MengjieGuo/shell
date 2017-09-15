#!/bin/sh

i=2
j=2
if [[ $j -ne 1 ]] && [[ $i -eq 2 ]];
then 
	echo there is 'if'
elif [[ $i -eq 1 ]]; then
	#statements
	echo there is 'elif' 
else
	echo there is 'else' 
fi


if [ $i -gt 1 -a $j -lt 2 ];then 
	echo there is 'if'
else 
	echo there is 'else'
fi

# 如果文件存在，且是文件，且是可执行，可读，可写，连接符文件 就为真
file='math.sh'
dir=/Users/screwman/
if [ -e $file ] && [ -f $file ] && [ -x $file ] && [ -r $file ] && [ -w $file ] && [ -L $file ]; then 
	echo $file is a 'file';
else
	echo $file is not a 'file';
fi

if [ -d $dir ] ;then
	echo $dir is a directory
else
	echo $dir is not a directory
fi

# 如果&& 和 || 一起使用，那么执行方向是从右向左。
str1='My name is '
str2="My name is "
# str2="Mengjie Guo"
if [[ $str1 > $str2 ]] || [[ $str1 = $str2 ]] && [[ -n $str1 ]] ; then
	#statements
	echo str1 == str2
else
	echo str1  != str2
fi