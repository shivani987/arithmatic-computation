#!/bin/bash -x

echo -p "enter the first input"
read a
echo -p "enter the second input"
read b
echo -p "enter the third input"
read c

q=`echo $a $b $c | awk '{print $1*$2+$3}'`
echo $q
