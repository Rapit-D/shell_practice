#!/usr/bin/bash
##############################
#Author:        Ray Ding
#Created Time:  2020-10-01_08:59:08
#Version:       1.0
#Description:   
#    Associative arrays
#    key-value array ( I treat it as dict in python)
##############################
# declare a new array (dict)
declare -A COLOR=(["red"]="#ff0000"  ["green"]="#00ff00")

echo ${COLOR[@]}
echo ${COLOR[*]}

# add a new key-value pair

COLOR["blue"]="#0000ff"

# get all values
echo "get all values:"

for value in ${COLOR[@]}
do
    echo $value
done

# get all keys
echo "get all keys:"

for key in ${!COLOR[@]}
do
    echo $key
done

# get all key - values
echo "get all key - values:"

for key in ${!COLOR[@]}
do
    echo "$key ---> ${COLOR[$key]}"
done
# 
COLOR["red"]="red"
echo ${COLOR["red"]}
