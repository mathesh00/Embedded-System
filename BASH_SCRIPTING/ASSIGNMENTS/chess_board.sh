#!/bin/bash
<<doc
Name : Mathesh
Date : 26.08.2023
Description : Print chess board
Sample input : none
Sample output : chess board
doc

for i in $(seq 1 8)
do
        for j in $(seq 1 8)
        do
                Sum=$(((i+j)%2))
                if [ $Sum -eq 0 ]
                then
                        echo -e -n "\e[47m " " "
                else
                        echo -e -n "\e[40m " " "
                fi
        done
        echo -e -n "\e[0m" " "
        echo " "
done
