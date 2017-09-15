#!/bin/sh

# cat 

echo Text | cat - file.sh # - 是stdin的文件名，最终会拼接text 和 file.sh文件的内容。

cat -n file.sh

cat -s file.sh # 合并连续空行
cat -b file.sh # 忽略空行

cat -T file.sh # 显示 \t 
