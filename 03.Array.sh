#!/usr/bin/bash
##############################
#Author:        Ray Ding
#Created Time:  2020-09-30_23:23:03
#Version:       1.0
#Description:   
# Array practise
##############################
# define a new array named CHAR_ARR, and assign four value to it.
CHAR_ARR=("A" "B" "C" "D")
# output its all value
echo ${CHAR_ARR[@]}


# assign new value to this array 
echo "change index 3 value to d CHAR_ARR[3]='d'"
CHAR_ARR[3]="d"
echo "assign index 4 value to e"
CHAR_ARR[4]="e"
echo "assign index 5 value to f"
CHAR_ARR[5]="f"
echo "assign index 6 value to g"
CHAR_ARR[6]="g"

echo -n "1st value: "
echo ${CHAR_ARR[0]}
echo -n "3rd value: "
echo ${CHAR_ARR[3]}

echo -n "all values: "
echo ${CHAR_ARR[@]}

echo -n "total num of value: "
echo ${#CHAR_ARR[@]}

echo -n "array index value: "
echo ${!CHAR_ARR[@]}

echo -n "output array value from index 3: "
echo ${CHAR_ARR[@]:3}

echo -n "output array 2 values from index 3 : "
echo ${CHAR_ARR[@]:3:2}
