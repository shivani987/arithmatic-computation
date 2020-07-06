
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

#sorted array in descending order

echo "Array in original order"
echo ${a[*]}


for ((i=0;i<${#a[@]};i++))
do
  for ((j=$i;j<${#a[@]};j++))
  do
    if [ ${a[$i]} -lt ${a[$j]} ]
    then
    temp=${a[$i]}
    a[$i]=${a[$j]}
    a[$j]=$temp
    fi
 done
done
echo "array in sorted order"
for (( i=0;i<${#a[@]};i++ ))
do
echo ${a[$i]}
done




