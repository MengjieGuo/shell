#!/bin/sh
# printf.sh
# printf 并不会像echo命令那样自动换行，需要在末尾输入\n
# -左对齐
# %s %d %f格式替换符
# 5表示5个字符的位置，不足的用空格填充，多余的截取
# 4.2表示四个字符，显示小数点后两位
printf "%-5s %-10s %-4s\n" No Name Mark
printf "%-5s %-10s %-4.2f\n" 1 Sarath 80.23456
printf "%-5s %-10s %-4.2f\n" 2 Jack 89.12345
printf "%-5s %-10s %-4.2f\n" 3 John 99.16445