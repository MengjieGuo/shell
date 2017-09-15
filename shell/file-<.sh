#/bin/sh

# cat < out.txt
# cat<<EOF>out.txt 与 下一个EOF之间的行会被当作stdin，然后重定向到out.txt后，out.txt作为cat的stdin
cat<<EOF>out.txt
LOG FILE HEADER
This is a test log file
Function: System statistics
EOF

# 自定义文件描述符，可以自定义stdin，stdout描述符，然后就可以直接从stdin读取数据；从stdout写数据。
# 打开描述符3作为stdin
echo this is a test line > input.txt
exec 3<input.txt # 使用文件描述符3打开并读取文件。
cat <&3 # 使用文件描述符3，如果想在此使用描述符3进行读取，是不可能的。

# 打开描述符4作为stdout。
exec 4>output.txt
echo newling>&4
cat output.txt

# 追加方式打开
exec 5>>output.txt
echo appended line >&5
cat output.txt