#!/bin/bash
<<doc
Name : Mathesh
Date : 26.08.2023
Description : Rename a file/directory replaced by lower/upper case letters
Sample input : dir dir1 dir2 FILE.SH FILE1.TXT script.sh
Sample output : DIR DIR1 DIR2 file.sh file1.txt script.sh
doc

echo "Before running the script"
for i in *
do
        if [ -d "$i" ]
        then
                directory="$i"
                new_name=$(echo "$directory" | tr 'a-z' 'A-Z')
                if [ "$directory" != "$new_name" ]
                then
                        mv "$directory" "$new_name"
                fi

        elif [ -f "$i" ]
        then
                file="$i"
                new_fname=$(echo "$file" | tr 'A-Z' 'a-z')
                if [ "$file" != "$new_fname" ]
                then
                        mv "$file" "$new_fname"
                fi
        fi
done
echo "Files are rename in lowercase and directories are renamed in upper case"


#mathesh@MATHESH:~/test$ ls
#DIR....   DIR2....  DIR4.TXT     FILE.TXT....  SCRIPT.SH....  mydir
#DIR1....  DIR3      FILE.SH....  FILE001.txt   assign10.sh
#mathesh@MATHESH:~/test$ ./assign10.sh
#Before running the script
#Files are rename in lowercase and directories are renamed in upper case
#mathesh@MATHESH:~/test$ ls
#DIR....   DIR2....  DIR4.TXT     FILE.TXT....  SCRIPT.SH....  file001.txt
#DIR1....  DIR3      FILE.SH....  MYDIR         assign10.sh
