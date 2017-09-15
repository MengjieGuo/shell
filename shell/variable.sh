#!/bin/sh
if [ $UID -ne 0 ]; then
	echo Non root user.
else
	echo Root user.
fi

if [ 2 ]; then
	echo 0
else
	echo 1
fi