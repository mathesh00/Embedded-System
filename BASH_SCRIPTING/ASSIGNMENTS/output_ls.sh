#!/bin/bash
<<doc
Name : Matheh
Date : 31.08.2023
Description : Print contents of a directory without ls command
Sample input : ./ouput_ls.sh ~ ~/ECEP
sample output : /home/user:
                Downloads Documents Desktop Music Pictures Public Videos
                ECEP
                /home/user/ECEP:
                Linux_Systems Advnc_C Linux_Internals Data_Structures MC
doc

if [ $# -eq 0 ]; then
    echo *
else
    for dir in $@; do
        if [ -d "$dir" ]; then
                echo "$dir:"
                find "$dir" -maxdepth 1 -type f -printf "%f\n"
                echo
        else
                echo "$0: Cannot access ‘$dir’ : No such a file or directory."
        fi
    done
fi
#mathesh@MATHESH:~$ ./assign17.sh photo
#./assign17.sh: Cannot access ‘photo’ : No such a file or directory.
#mathesh@MATHESH:~$ ./assign17.sh photos
#photos:
#assign11.sh
