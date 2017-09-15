#!/bin/sh

echo "this is a sample test 1" > temp.txt

echo "This is a sample test 2" >> temp.txt

# $? 可以获取上一个命令的状态
# ls + 2> out.txt

# 把stderr和stdout重定向到不同文件
# ls + 2>stderr.txt 1>stdout.txt

echo a1 > a1.txt
cp a1.txt a2.txt; cp a2.txt a3.txt;
chmod 000 a1.txt

# cat a* &>/dev/null # 把stderr和stdout重定向到/dev/null，这里的文件全部会被丢掉
# cat a* 2>err.txt 1>out.txt
# cat a* 2> out.txt 1>out.txt
# cat a* &> out.txt
# 把stderr和stdout重定向到同一文件
# ls + 2>&1 output.txt # 对于cat命令不能使用2>&1，因为会把这个当作文件名活着目录名
# ls + &> output.txt

# tee只从stdin接受数据，一份写入文件out.txt，另一份作为cat的stdin
# cat a*的stdout作为tee的stdin
cat a* | tee out.txt | cat -n
cat a* | tee -a out.txt | cat -n

# tee - 的 - 作为了stdin；同时可以使用 /dev/stdin /dev/stdout /dev/stderr
echo who is this | tee -