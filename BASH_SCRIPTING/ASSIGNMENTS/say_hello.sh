#!/bin/bash
<<doc
Name : Matheh
Date : 29.08.2023
Description : Print greetings based on time
Sample input : None
sample output : Good Morning user, Have nice day!
                This is Thursday 08 in June of 2017 (10:44:10 AM)
doc

hour=$(date | cut -d' ' -f4 | cut -d':' -f1)
greeting=""
user=`whoami`

if [ "$hour" -ge 5 ] && [ "$hour" -lt 12 ]; then
    greeting="Good morning"
elif [ "$hour" -ge 12 ] && [ "$hour" -lt 13 ]; then
    greeting="Good noon"
elif [ "$hour" -ge 13 ] && [ "$hour" -lt 17 ]; then
    greeting="Good afternoon"
elif [ "$hour" -ge 17 ] && [ "$hour" -lt 21 ]; then
    greeting="Good evening"
else
    greeting="Good night"
fi
echo "$greeting $user, Have nice day!"
echo "This is $(date +"%A %d in %B of %Y (%r)")"

#open the .bashrc
#go to the last line
#save the say_hello file.sh with path direction
#it will priint the greating and date, when we start shell (whenever you opening new tab or terminal)
