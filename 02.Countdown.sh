#!/bin/bash
# Author:   Ray Ding
# Date:     2020/09/29 21:31
# Version:  1.0
# Description:
# Countdown

for time in `seq 9 -1 0`;do
echo -ne "\b$time"
sleep 1
done
echo 
