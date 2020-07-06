#!/bin/bash -x
echo -p "enter the first"
read a
echo -p "enter the second"
read b
echo -p "enter the third"
read c

p=`echo $a $b $c | awk '{ print $1+$2*$3 }'`

q=`echo $a $b $c | awk '{ print $1*$2+$3 }'`

r=`echo $a $b $c | awk '{ print $3+$1/$2 }'`

s=`echo $a $b $c | awk '{ print $1/$2+$3 }'`

a[1]=$p

a[2]=$q

a[3]=$r

a[4]=$s

echo ${a[@]}

#sorted array in ascending order

echo "Array in original order"
echo ${a[*]}

for ((i=1;i<${#a[@]};i++))
do
  for ((j=1;j<${#a[@]};j++))
  do
    if [ ${a[j]} -gt ${a[$((j+1))]} ]
    then
    temp=${a[j]}
    a[$j]=${a[$((j+1))]}
    a[$((j+1))]=$temp
    fi
 done
done
echo "array in sorted order"
echo ${a[*]}
