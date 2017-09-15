#!/bin/sh

# 普通数组
array_var=(1 2 3 4 5 6)

array_var2[0]="test1"
array_var2[1]="test2"
array_var2[2]="test3"
array_var2[3]="test4"
array_var2[4]="test5"
array_var2[5]="test6"

echo ${array_var[0]}
echo ${array_var[1]}
echo ${array_var[*]}
echo ${array_var[@]}

index=5
echo ${array_var2[$index]}

echo ${!array_var2[*]}
echo ${#array_var2[*]}
echo ${#array_var2} # 5??

# 关连数组，索引时字符串
declare -A ass_array
# ass_array=([index1]=val1 [index2]=val2)
ass_array[index3]=val3
ass_array[index4]=val4

echo ${ass_array[index3]}
echo ${!ass_array[*]}
echo ${!ass_array[@]}