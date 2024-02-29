#!/bin/bash
<<doc
Name : Mathesh
Date : 26.08.2023
Description : Arithmetic calculator using command line arguments
Sample input : ./arithmatic_calc.sh 25 + 41
Sample output : 25 + 41 = 66
doc

if [ $# -eq 0 ]
then
 echo "Error : Please pass the arguments through command line."
 echo "Usage:./arithmatic_calc.sh 2.3 + 6.7"
elif [ $# -eq 3 ]
then
  case $2 in
 +) sum=`expr "scale=2; $1 + $3" | bc`
   echo "$1 + $3 = $sum" ;;
 -) sub=`expr "scale=2; $1 - $3" | bc`
  echo "$1 - $3 = $sub" ;;
 x) mul=`expr "scale=2; $1 "*" $3" | bc`
  echo "$1 x $3 = $mul" ;;
 /) div=`expr "scale=2; $1 / $3" | bc`
  echo "$1 / $3 = $div" ;;
 esac
else
echo "Error:Please pass 3 arguments."
echo "Usage:./arithmatic_calc.sh 2.3 + 6.7"
fi
