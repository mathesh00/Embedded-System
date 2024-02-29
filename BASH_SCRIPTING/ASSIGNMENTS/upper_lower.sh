#!/bin/bash
<<doc
Name : Mathesh
Date : 28.08.2023
Description : Convert string lower to upper and upper to lower
Sample input : ./upper_lower.sh file.txt
               Please select option : 1
Sample output : WHAT IS OS?
                WHAT ARE THE DIFFERENT OS?
                WHEN IS OS USED?
                WHAT IS PARTITION AND ITS USE?
                HOW MANY PARTITIONS CAN BE DONE?
doc

if [ $# -eq 0 ]
then
    echo "Error : Please pass the file name through command line."
    exit 1
fi
filename="$1"
file_contents=$(cat $filename)
if [ -z "$file_contents" ]
then
    echo "Error: No contents inside the file."
    exit 1
fi
echo "1 – Lower to upper"
echo "2 – Upper to lower"
read -p "Please select option : " choice
case $choice in
    1)
        echo "$file_contents" | tr 'a-z' 'A-Z'

        ;;
    2)
        echo "$file_contents" | tr 'A-Z' 'a-z'
        ;;
esac
