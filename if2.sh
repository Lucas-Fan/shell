#!/bin/bash
#if file
#by authors fzyt 2019

DIR=/home/fzyt/shell/aaa/

if [ ! -d $DIR ];then
	mkdir -p $DIR
	echo  "\033[32mThis $DIR is create success!\033[0m"
else
	echo  "\033[32mThis $DIR is exist,Please exit.\033[0m"
fi
