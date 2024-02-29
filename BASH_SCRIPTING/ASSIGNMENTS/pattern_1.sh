#!/bin/bash
<<doc
Name : Mathesh
Date : 26.08.2023
Description : Generate a number pattern increment from left to right
Sample  input : 4
Sample output : number pattern
doc
number=1
read -p "Enter the number : " rows
for((i=1; i<=rows; i++))
do
  for((j=1; j<=i; j++))
  do
    echo -n "$number "
    number=$((number + 1))
  done
  number=1
  echo
done
