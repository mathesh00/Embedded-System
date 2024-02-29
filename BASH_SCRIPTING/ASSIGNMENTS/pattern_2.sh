#!/bin/bash
<<doc
Name : Mathesh
Date : 28.08.2023
Description : Generate a number pattern increasing from top to bottom
Sample input : 4
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
  echo
done
