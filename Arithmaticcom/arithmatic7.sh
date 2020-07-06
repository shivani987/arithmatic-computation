#!/bin/bash -x

declare -i input
p=0
q=0
r=0
s=0
echo -p "enter the first"
read a
echo -p "enter the second"
read b
echo -p "enter the third"
read c

read -p "enter the no which you want from 1 to 4" input
  case $input in
  1)
    inputArr[$p]=`echo $a $b $c | awk '{ print $1+$2*$3 }'`
    result["1"]=${inputArr[p]};;
  2)
    inputArr[q]=`echo $a $b $c | awk '{ print $1*$2+$3 }'`
    result["2"]=${input[q]};;
  3)
    inputArr[r]=`echo $a $b $c | awk '{ print $3+$1/$2 }'`
    result["3"]=${input[r]};;
  4)
    inputArr[s]=`echo $a $b $c | awk '{ print $1/$2+$3 }'`
    result["4"]=${input[s]};;
esac



