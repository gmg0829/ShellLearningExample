#!/bin/bash

#表达式
a=4
b=3
val=`expr $a + $b`
echo "a + b : $val"

val=`expr $a - $b`
echo "a - b : $val"

val=`expr $a \* $b`
echo "a * b : $val"

val=`expr $b / $a`
echo "b / a : $val"

val=`expr $b % $a`
echo "b % a : $val"

if [ $a == $b ]
then
   echo "a equal b"
fi
if [ $a != $b ]
then
   echo "a not equal b"
fi

#逻辑运算符
c=10
d=120

if [[ $c -lt 100 && $d -gt 100 ]]
then
   echo "return true"
else
   echo "return false"
fi



