#!/bin/bash
a=10
b=20
if [ $a == $b ]
then
   echo "a equal b"
elif [ $a -gt $b ]
then
   echo "a > b"
elif [ $a -lt $b ]
then
   echo "a < b"
else
   echo "not suit"
fi

#遍历
for skill in Ada Coffe Action Java
do
    echo "I am good at ${skill}Script"
done

#while
k=1
while(( k<=5 ))
do
    echo $k
    let "k++"
done

echo '按下 <CTRL-D> 退出'
echo -n '输入你最喜欢的网站名: '
while read FILM
do
    echo "是的！$FILM 是一个好网站"
done