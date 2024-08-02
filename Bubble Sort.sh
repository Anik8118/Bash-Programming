#!/bin/bash
bubble_sort() {
    local arr=("$@")
    local n=${#arr[@]}
    local swapped
    for ((i=0;i<n-1;i++));do
        swapped=false
        for ((j=0; j<n-i-1;j++));do
            if ((arr[j] > arr[j+1])); then
                temp=${arr[j]}
                arr[j]=${arr[j+1]}
                arr[j+1]=$temp
                swapped=true
            fi
        done
        if [ "$swapped" = false ]; then
            break
        fi
    done
    echo "${arr[@]}"  # Print sorted array
}
if [ "$#" -eq 0 ]; then
    echo "Usage: $0 <array of integers>"
    exit 1
fi

sorted_array=$(bubble_sort "$@")
echo "Sorted array: $sorted_array"

