#!/usr/bin/bash
##############################
#Author:        Ray Ding
#Created Time:  2020-10-11_10:47:22
#Version:       1.0
#Description:   
#    using netstat and rpm to detect service installation and running status
##############################
read -p "Please input service name: " SERVICE
netstat -anp | grep $SERVICE &> /dev/null
if [ $? -eq 0 ]
then
    echo "$SERVICE is running!"
else
    rpm -q $SERVICE &> /dev/null
    if [ $? -eq 0 ]
    then
        echo "$SERVICE is installed."
    else
        echo "$SERVICE has not installed."
    fi
fi
