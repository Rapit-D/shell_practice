#!/usr/bin/bash
##############################
#Author:        Ray Ding
#Created Time:  2020-10-11_10:26:34
#Version:       1.0
#Description:   
#    judge a host is alive or dead using icmp
##############################
ping -c 1 -W 2 $1 &> /dev/null
if [ $? -eq 0 ] 
    then
        echo "$1 is alive"
else
        echo "$1 is dead"
fi
