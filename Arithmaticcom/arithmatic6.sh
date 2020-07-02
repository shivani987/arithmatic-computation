#!/bin/bash -x
read -p "enter number : " a
read -p "enter number : " b
read -p "enter number : " c

p=`echo $a $b $c | awk '{ print $1+$2*$3}'`
echo $p
q=`echo $a $b $c | awk '{print $1%$2+$3}'`
echo $q
r=`echo $a $b $c | awk '{print $3+$1/$2}'`
echo $r
s=`echo $a $b $c | awk '{print $1*$2+$3}'`
echo $s

function arithmatic_dictionary(){
  declare -A arithmatic=(['uc1']='$p' ['uc2']='$q' ['uc3']='$r' ['$s']='$s')

  echo '('
  for key in "${!arithmatic[@]}"
  do
  echo "['$key']"='${arithmatic[$key]}'"
  done
  echo ')'
}
declare -A input_arithmatic="$(arithmatic_dictionary)"
  for key in "${!input_arithmatic[@]}"
  do
  echo "${key}: '"${input_arithmatic[]$key}"'"
done

