#!/bin/sh -xv
# -xv 貌似不起作用，shebang是什么，好像有这个才起作用。
# sh -x date.sh
# 活着在脚本中需要显示debug的地方set -x 然后 set + v结束显示
# 好像set -v 没有set -x显示的少了++ +提示，把命令和结果都显示出来

start=$(date "+ %s")
date  # Thu Sep 14 04:48:04 EDT 2017
date "+%Y %b %D %H %M %S"  # 2017 Sep 09/14/17 04 47 51
# date --date "Thu Sep 14 04:45:45 EDT 2017"  +%A # 显示周几
# date --date "Thu Sep 14 04:45:45 EDT 2017" +%s # 显示秒-从19700101:00:00:00到现在的秒
sleep 3
set -x
end=$(date "+ %s")
set +x
difference=$(( end - start ))
set -v
echo $difference
difference=$[ end - start ]
echo $difference
set +v
let difference=end-start
difference=$(expr $end - $start)

echo Time taken to execute commands is : $difference seconds.
# 设置系统时间
# date -s "20170909"
# date -s "14:05:34"
# date -s "Thu Sep 14 04:48:04 EDT 2017"