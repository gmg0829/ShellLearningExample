#!/bin/bash

#数组
array_name=(value0 value1 value2 value3)
#获取数组所有元素
echo ${array_name[@]}
#获取数组长度
length=${#array_name[@]}
echo $length
#获取单个元素的长度
lengthn=${#array_name[0]}
echo $lengthn