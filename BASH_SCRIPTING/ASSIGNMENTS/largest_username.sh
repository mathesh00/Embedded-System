#!/bin/bash
<<doc
Name : Matheh
Date : 30.08.2023
Description : Display the longest and shortest user-names on the system
Sample input : None
sample output : The Longest Name is: speech-dispatcher
                The Shortest Name is:lp
doc

usernames=$(cut -d':' -f1 /etc/passwd)
shortest=""
longest=""

for username in $usernames; do
    if [ -z "$shortest" ] || [ ${#username} -lt ${#shortest} ]; then
        shortest="$username"
    fi
    if [ -z "$longest" ] || [ ${#username} -gt ${#longest} ]; then
        longest="$username"
    fi
done
echo "The Shortest Name is:$shortest"
echo "The Longest Name is:$longest"


#mathesh@MATHESH:~$ ./assign13.sh
#The Shortest Name is:lp
#The Longest Name is:systemd-timesync
