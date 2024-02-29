#!/bin/bash
<<doc
Name : Matheh
Date : 30.08.2023
Description : Sort a given number in ascending or descending order
Sample input : ./sorting.sh -a 5 4 6 2 3 8 9 7 1
sample output : Ascending order of array is 1 2 3 4 5 6 7 8 9
doc

if [ $# -eq 0 ]; then
    echo "Error : Please pass the argument through command line."
    echo "Usage : ./sorting -a/-d 4 23 5 6 3"
    exit 1
elif [ "$1" != "-a" ] && [ "$1" != "-d" ]; then
    echo "Error : Please pass the choice."
    echo "Usage : ./sorting -a/-d 4 23 5 6 3"
    exit 1
elif [ $# -eq 0 ]; then
    echo "Error : Please pass numbers through command line."
    echo "Usage : ./sorting -a/-d 4 23 5 6 3"
    exit 1
fi
bubble_sort() {
    local arr=("$@")
    local n=${#arr[@]}

    for ((i = 0; i < n - 1; i++)); do
        for ((j = 0; j < n - i - 1; j++)); do
            if [ "${arr[j]}" -gt "${arr[j + 1]}" ]; then
                temp="${arr[j]}"
                arr[j]="${arr[j + 1]}"
                arr[j + 1]="$temp"
            fi
        done
    done

    echo "${arr[@]}"
}
if [ "$1" = "-d" ]; then
    shift
    sorted_numbers=($(bubble_sort "$@"))
    reversed_sorted=()
    for ((i = ${#sorted_numbers[@]} - 1; i >= 0; i--)); do
        reversed_sorted+=("${sorted_numbers[i]}")
    done
    echo "Descending order of array is ${reversed_sorted[*]}"
elif [ "$1" = "-a" ]; then
    shift
    sorted_numbers=($(bubble_sort "$@"))
    echo "Ascending order of array is ${sorted_numbers[*]}"
else
    echo "Error : Please pass the choice."
    echo "Usage : ./sorting -a/-d 4 23 5 6 3"
    exit 1
fi
