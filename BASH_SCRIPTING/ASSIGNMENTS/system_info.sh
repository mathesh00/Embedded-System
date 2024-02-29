#!/bin/bash
<<doc
Name : Matheh
Date : 02.09.2023
Description : Print system information using commands
Sample input : ./system_info.sh
                1. Currently logged users
                2. Your shell directory
                3. Home directory
                4. OS name & version
                5. Current working directory
                6. Number of users logged in
                7. Show all available shells in your system
                8. Hard disk information
                9. CPU information.
                10. Memory Informations
                11. File system information.
                12. Currently running process.
                Enter the choice : 2
sample output : Your shell directory is /bin/bash
doc

while true; do
    echo "1. Currently logged users"
    echo "2. Your shell directory"
    echo "3. Home directory"
    echo "4. OS name & version"
    echo "5. Current working directory"
    echo "6. Number of users logged in"
    echo "7. Show all available shells in your system"
    echo "8. Hard disk information"
    echo "9. CPU information"
    echo "10. Memory information"
    echo "11. File system information"
    echo "12. Currently running process"
    read -p "Enter the choice: " choice
    case $choice in
        1)
            echo "Currently logged users is"
            who
            ;;
        2)
            echo "Your shell directory is $SHELL"
            ;;
        3)
            echo "Home directory is $HOME"
            ;;
        4)
            echo "OS name & version is "
            uname -a
            ;;
        5)
            echo "Current working directory is "
            pwd
            ;;
        6)
            echo "Number of users logged in is "
            who -q
            ;;
        7)
            echo "Available shells in your system is "
            cat /etc/shell
            ;;
        8)
            echo "Hard disk information is "
            hwinfo
            ;;
        9)
            echo "CPU information is "
            lscpu
            ;;
        10)
            echo "Memory information is "
            free -h
            ;;
        11)
            echo "File system information is "
            df -T
            ;;
        12)
            echo "Currently running processes is"
            ps aux
            ;;
        *)
            echo "Error: Invalid option, please enter a valid option."
            ;;
    esac
    read -p "Do you want to continue (y/n)? " cont
    if [ "$cont" != "y" ]; then
        exit 0
    fi
done


<<output 
mathesh@MATHESH:~$ ./assign9.sh
1. Currently logged users
2. Your shell directory
3. Home directory
4. OS name & version
5. Current working directory
6. Number of users logged in
7. Show all available shells in your system
8. Hard disk information
9. CPU information
10. Memory information
11. File system information
12. Currently running process
Enter the choice: 4
OS name & version is
Linux MATHESH 5.15.90.1-microsoft-standard-WSL2 #1 SMP Fri Jan 27 02:56:13 UTC 2023 x86_64 x86_64 x86_64 GNU/Linux
Do you want to continue (y/n)? n
mathesh@MATHESH:~$ ./assign9.sh
1. Currently logged users
2. Your shell directory
3. Home directory
4. OS name & version
5. Current working directory
6. Number of users logged in
7. Show all available shells in your system
8. Hard disk information
9. CPU information
10. Memory information
11. File system information
12. Currently running process
Enter the choice: 13
Error: Invalid option, please enter a valid option.
Do you want to continue (y/n)? n
output
