#!/bin/bash
<<doc
Name : Matheh
Date : 30.08.2023
Description : Count the number of users with user IDs between given range.
Sample input : None
sample output : Total count of user ID between 500 to 10000 is: 2
doc

default_start_range=500
default_end_range=10000
if [ $# -eq 2 ]; then
    user_start_range=$1
    user_end_range=$2
else
    echo "Error: Please pass 2 arguments through the CL."
    echo "Usage: ./user_ids.sh 100 200"
    exit 1
fi
user_ids=$(cut -d':' -f3 /etc/passwd)
count=0
for user_id in $user_ids; do
    if [ "$user_id" -ge "$user_start_range" ] && [ "$user_id" -le "$user_end_range" ]; then
        count=$((count + 1))
    else
        echo "Error: Invalid range. Please enter the valid range through the CL."
        exit 1
    fi
done
echo "Total count of user ID between $user_start_range and $user_end_range: $count"

