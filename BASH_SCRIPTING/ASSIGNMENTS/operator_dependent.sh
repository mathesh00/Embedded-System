#!/bin/bash
<<doc
Name : Mathesh
Date : 29.08.2023
Description : Perform arithmetic operation on digits of a given number
Sample input : ./operator_dependent.sh 1234+
Sample output : Sum of digits = 10
doc

if [ $# -eq 1 ]
then
        input="$1"
        operator="${input: -1}"
        number="${input%$operator}"
        result="${number:0:1}"
        number="${number:1}"
        for digit in $(echo "$number" | sed 's/./& /g'); do
                case "$operator" in
                        +) result=$((result + digit));;
                        -) result=$((result - digit));;
                        x) result=$((result * digit));;
                        /) result=$(echo "scale=2; $result / $digit" | bc);;
                        *) echo "Error: Operator missing or invalid operator, please pass operator as last digit (+,-,x,/)"; exit 1 ;;
                esac
        done
        if [ $operator == + ]
        then
                echo "sum of digits = $result"
        elif [ $operator == - ]
        then
                echo "Subtraction of digits = $result"
        elif [ $operator == x ]
        then
                echo "Multiplication of digits = $result"
        elif [ $operator == / ]
        then
                echo "Division of digits = $result"
        fi
else
        echo "Error : Please pass the arguments through CL."
        echo "Usage : ./operator_dependent.sh 2345+"
fi
