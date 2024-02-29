#!/bin/bash
<<doc
Name : Mathesh
Date : 28.08.2023
Description : Renames the jpg files with new name passed through command line
Sample input : DSN001.jpg DSN002.jpg dsn.sh dsn
Sample output : day_out001.jpg day_out002.jpg dsn.sh dsn
doc

if [ $# -gt 0 ]
then
        for i in *.jpg
        do
                num=$(echo "$i" | tr -cd [:digit:])
                mv "$i" "$1$num.jpg"
        done
else
        echo "Error : Please pass the prefix name through command line."
fi

#mathesh@MATHESH:~/photos$ ls
#DSN001.jpg  DSN002.jpg  assign11.sh  dsn  dsn.sh
#mathesh@MATHESH:~/photos$ ./assign11.sh day_out
#mathesh@MATHESH:~/photos$ ls
#assign11.sh  day_out001.jpg  day_out002.jpg  dsn  dsn.sh
