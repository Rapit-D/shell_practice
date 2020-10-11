#!/usr/bin/bash
##############################
#Author:        Ray Ding
#Created Time:  2020-10-11_17:19:57
#Version:       1.0
#Description:   
#    Determine whether the input year is a leap year
##############################

while true;do
    read -p "years:" YEAR
    if (( $YEAR%4 == 0 && $YEAR%100 != 0 )) || (( $YEAR%400 == 0 && $YEAR%3200 != 0 )) || (( $YEAR%80000 == 0 ))
    then
        echo "$YEAR is leap year."
    else
        echo "$YEAR is not leap year."
    fi
done
