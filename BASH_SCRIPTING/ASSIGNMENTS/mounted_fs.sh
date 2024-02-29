#!/bin/bash
<<doc
Name : Matheh
Date : 30.08.2023
Description : Determine whether a given file system or mount point is mounted
Sample input : ./mounted_fs.sh /dev/sda2
sample output : File-system /dev/sda2 is mounted on / and it is having 98%
doc

if [ $# -eq 0 ]; then
    echo "Error : Please pass the name of the file-system through command line."
    exit 1
fi
req_file_system="$1"
found=0
df | awk 'NR>1 {print $1, $6, $3, $4}' | while read -r file_system mount_point used_space available_space; do
    if [ "$file_system" = "$req_file_system" ]; then
        found=1
        if mountpoint -q "$mount_point"; then
            echo "File-system $req_file_system is mounted on $mount_point and it is having $((used_space * 100 / (used_space + available_space)))%"
            echo "used space with $available_space KB free."
            exit 1
        else
            echo "$req_file_system is not mounted."
        fi
        break
    fi
done

#mathesh@MATHESH:~$ ./assign16.sh snapfuse
#File-system snapfuse is mounted on /snap/core20/1891 and it is having 100%
#used space with 0 KB free.
#mathesh@MATHESH:~$ ./assign16.sh
#Error : Please pass the name of the file-system through command line.
