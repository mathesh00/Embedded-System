#!/bin/bash
<<doc
Name : Matheh
Date : 01.09.2023
Description : Display the number of executable files in that directory
Sample input : /executable_path.sh
sample output : Current dir: /usr/local/sbin
                current count: 0
                Current dir: /usr/local/bin
                current count: 0
                Current dir: /usr/sbin
                current count: 205
                Current dir: /usr/bin
                current count: 1889
                Current dir: /sbin
                current count: 187
                Current dir: /bin
                current count: 159
                Current dir: /usr/games
                current count: 5
                Current dir: /usr/local/games
                current count: 0
                Total – 2445
doc

IFS=":" read -ra arr <<< "$(printenv PATH)"
total=0
for i in "${arr[@]}"; do
    if [ -d "$i" ]; then
        cd "$i" || continue
        count=0
        for j in *; do
            if [ -x "$j" ]; then
                count=$((count + 1))
            fi
        done
        echo "Current dir: $i"
        echo "Current count: $count"
        total=$((total + count))
    fi
done
echo "Total - $total"

<<output
mathesh@MATHESH:~$ ./assign19.sh
Current dir: /usr/local/sbin
Current count: 0
Current dir: /usr/local/bin
Current count: 0
Current dir: /usr/sbin
Current count: 387
Current dir: /usr/bin
Current count: 1049
Current dir: /sbin
Current count: 387
Current dir: /bin
Current count: 1049
Current dir: /usr/games
Current count: 0
Current dir: /usr/local/games
Current count: 0
Current dir: /usr/lib/wsl/lib
Current count: 3
Current dir: /mnt/c/Windows/system32
Current count: 4459
Current dir: /mnt/c/Windows
Current count: 111
Current dir: /mnt/c/Windows/System32/Wbem
Current count: 347
Current dir: /mnt/c/Windows/System32/WindowsPowerShell/v1.0/
Current count: 27
Current dir: /mnt/c/Windows/System32/OpenSSH/
Current count: 7
Current dir: /mnt/c/Users/mamat/AppData/Local/Microsoft/WindowsApps
Current count: 49
Current dir: /snap/bin
Current count: 8
Total - 7883
output
