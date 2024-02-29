#!/bin/bash
<<doc
Name : Matheh
Date : 01.09.2023
Description : Replace 20% lines in a C file randomly and replace it with the pattern
Sample input : ./replace_DEL.sh main.c
sample output : Before replacing
                #incude <stdio.h>
                int main()
                {
                         printf(“Hello world\n”);
                }
                After replacing
                #incude <stdio.h>
                int main()
                {
                <-----------Deleted------------>
                }
doc

if [ $# -ne 1 ]; then
    echo "Error: Please pass the file name through command line."
    exit 1
fi
input="$1"
if [ ! -f "$input" ]; then
    echo "Error: No such a file."
    exit 2
fi
if [ ! -s "$input" ]; then
    echo "Error: $input is empty file. So Can't replace the string."
    exit 3
fi
total_lines=$(wc -l < "$1")
if [ "$total_lines" -lt 5 ]; then
    exit 4
fi
lines_to_replace=$((total_lines / 5))
echo "Before replacing"
cat "$input"
sed -i "$(shuf -i 1-"$total_lines" -n "$lines_to_replace" | sort -n | awk -v var="$lines_to_replace" 'BEGIN { srand(); } { if (NR <= var) print NR }')s/.*/\/\/ <-----------Deleted------------>/" "$input"
echo "After replacing"
cat "$input"



<<output
mathesh@MATHESH:~$ ./assign20.sh main.c
Before replacing
int main()
{
         printf(“Hello world\n”);
}
return 0
After replacing
// <-----------Deleted------------>
{
         printf(“Hello world\n”);
}
return 0
mathesh@MATHESH:~$ ./assign20.sh main2.c
Error: main2.c is empty file. So Can't replace the string.
mathesh@MATHESH:~$ ./assign20.sh main1.c
Error: No such a file.
output
