#!/usr/bin/bash
##############################
#Author:        Ray Ding
#Created Time:  2020-10-15_20:44:42
#Version:       1.0
#Description:   
#Backup files which modified within a day to /cache directory, then tar those files and send it to remote machine.
# this script didn't test yet    
##############################
DIR="/cache/$(date +%F )"
echo $DIR
if [ ! -d $DIR ]
then
    mkdir -p $DIR
    find / -user ray -mtime -1 -exec cp {} $DIR \;
else
    find / -user ray -mtime -1 -exec cp {} $DIR \;
fi
