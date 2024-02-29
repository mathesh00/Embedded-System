#!/bin/bash
<<doc
Name : Mathesh
Date : 29.08.2023
Description : Print contents of file from given line number to next given number of lines.
Sample input : ./print_lines.sh 5 3 myfile.txt
Sample output : line number 5
                line number 6
                line number 7
doc

if [ $# -eq 3 ]
then
        total_line_number=$(wc -l < "$3")
        line_number=$1
        no_of_lines=$2
        sum=$((line_number + no_of_lines))
        changed_sum=$((sum - 1))
        if [ "$changed_sum" -le "$total_line_number" ]
        then
                tail -n +$line_number "$3" | head -n $no_of_lines
        else
                echo "Error: data.txt is having only 10 lines. file should have atleast 14 lines"
        fi
else
        echo "Error: arguments missing!"
        echo "Usage: ./file_filter.sh start_line upto_line filename"
        echo "For eg. ./file_filter.sh 5 5 <file>"
fi
