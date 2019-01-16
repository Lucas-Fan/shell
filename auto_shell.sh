#!/bin/bash
#auto backup mysql db
#by author fzyt 2019
#define backup path

BACKUP_DIR=/home/fzyt/shell/aaa/`date +%y%m%d`
MYSQLDB=discuz
MYSQLUS=backup
MYSQLPW=1234
MYSQLCMD=/usr/bin/mysqldump

if [ $UID -ne 0 ];then
	echo "Must to be use root for exec shell.";
	exit;
fi

if [ ! -d $BACKUP_DIR ];then
	mkdir $BACKUP_DIR;
	echo "\033[32mThe $BACKUP_DIR create successfully!\033[0m";
else
	echo "This $BACKUP_DIR is exists..";
fi

# $MYSQLCMD -u$MYSQLUSR -p$MYSQLPW -d $MYSQLDB >$BACKUP_DIR/$MYSQLDB.sql

if [ $? -eq 0 ];then
	echo "\033[32mThe mysql backup $MYSQLDB successfully!\033[0m";
else
	echo "\033[32mThe mysql backup $MYSQLDB failed!\033[0m";
fi
