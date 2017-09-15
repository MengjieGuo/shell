#!/bin/sh

# 给命令一个别名，这样两个命令就是同样的作用
alias l='ls -l'

l 		# ls -l
l -a 	# ls -l -a

# 为了系统的安全，有时必须使用本来的命令，这时别名可能与系统命令同名
\l
\ls

# 别名也可以表示一系列命令
alias rml='cp $@ ~/backup/ && rm $@'

# unalias 可以删除别名，也可以使用alias cmd=
unalias rml 	# bash:lll: command not found
alias rml= 		# 

# 如果创建的别名已经存在，那么会覆盖原来的命令。

stty -echo # 关闭-不现实输入的内容，在输入密码时有用
syyt echo  # 重新开启-显示输入内容