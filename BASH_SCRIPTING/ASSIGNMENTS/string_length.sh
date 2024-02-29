#!/bin/bash
<<doc
Name : Mathesh
Date : 26.08.2023
Description : Print the length of each and every string using arrays
Sample input : ./string_length.sh hello hai how are you?
Sample output : Length of string (hello) - 5
                Length of string (hai) - 3
                Length of string (how) - 3
                Length of string (are) - 3
                Length of string (you?) - 4
doc

if [ $# -gt 0 ]
then
        arr=($@)
        for i in ${arr[@]}
        do
                echo "Length of string ($i) - ${#i}"
        done
else
        echo "Error : Please pass the arguments through command-line."
fi
