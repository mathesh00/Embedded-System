#!/bin/bash
<<doc
Name : Matheh
Date : 30.08.2023
Description : Delete empty lines from a file
Sample input : ./delete_empty_lines.sh file.txt
sample output : Empty lines are deleted
                Hello
                How
                are
                you?
doc

if [ $# -ne 1 ]; then
    echo "Error: Please pass the file name through command line."
    exit 1
fi
sed -i '/^[[:space:]]*$/d' "$1"

if [ $? -eq 0 ]; then
    echo "Empty lines are deleted"
    cat "$1"
fi
