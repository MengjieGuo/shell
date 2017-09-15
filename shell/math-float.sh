#!/bin/sh

# 浮点数处理，使用工具bc，可以执行浮点数运算并应用高级运算
# 如果不加 | bc 那么就是打印一个字符串
echo "4 * 0.56" | bc # 2.24

# 现在需要把结果赋值给一个变量，要使用反引号`
nu1=54;
result=`echo "$nu1 * 1.5" | bc`
echo $result

echo "scale=3;3/8" | bc

nu2=100
echo "obase=2;$nu2" | bc

nu3=1100100
echo "obase=10;ibase=2;$nu3" | bc

# 计算平方根和平方
echo "sqrt(100)" | bc
echo "10^10" | bc

# 为什么要一个echo？
echo -e  "\e[1;31m 1\t2\t3 \e[0m"