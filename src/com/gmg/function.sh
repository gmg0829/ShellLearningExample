#!/bin/bash

dom(){
 echo "im function"
}
dom


funWithReturn(){
    echo "����������������������ֽ����������..."
    echo "�����һ������: "
    read aNum
    echo "����ڶ�������: "
    read anotherNum
    echo "�������ֱַ�Ϊ $aNum �� $anotherNum !"
    return $(($aNum+$anotherNum))
}
funWithReturn
#��������ֵ�ڵ��øú�����ͨ�� $? �����
echo "�������������֮��Ϊ $? !"