#!/bin/bash
num=12
echo $num

#只读变量
myUrl="http://www.w3cschool.cc"
readonly myUrl

#删除变量
myUrls="http://www.runoob.com"
unset myUrls
echo $myUrls

#拼接字符串
your_name="qinjx"
greeting="hello,"$your_name"!"
echo ${greeting}

#获取字符串长度
echo ${#greeting}

#输出ello 从字符串第 2 个字符开始截取 4 个字符
echo ${greeting:1:4}
echo `expr index "$greeting" l`  # 输出3 搜索l的位置
