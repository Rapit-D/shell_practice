#!/usr/bin/bash
##############################
#Author:        Ray Ding
#Created Time:  2020-10-12_20:07:03
#Version:       1.0
#Description:   
#       Backup files which modified within a day to /cache directory, then tar those files and send it to remote machine.
# this script didn't test yet
##############################
DIR="/cache/$(date +%F )"

if [ ! -d $DIR ]
then
    mkdir -p $DIR
    for f in `find / -mtime -1`
    do
        cp $f $DIR
    done
fi

tar cvf $DIR.tar $DIR/*

## rsync to remote hosts
#rsync $DIR.tar ray@192.168.3.170:/home/ray/backup/<<EOF
#password_test
#EOF

