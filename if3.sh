#!/bin/bash
#if files
#by authors fzyt 2019

FILES=/home/fzyt/shell/aaa/test.txt

if [ ! -f $FILES ];then
	echo "OK" >> $FILES
else
	echo "\033[32m-------------------------\033[l"
	cat $FILES
fi
