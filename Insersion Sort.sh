#!/bin/bash
insertion_sort(){
    local arr=("$@")
    local n=${#arr[@]}

    for ((i=1;i<n;i++));do
        key=${arr[i]}
        j=$((i - 1))

        while ((j>=0 && arr[j]>key));do
            arr[j+1]=${arr[j]}
            ((j--))
        done
        arr[j+1]=$key
    done
    echo "${arr[@]}"
}
if [ "$#" -eq 0 ]; then
    echo "Usage: $0 <array of integers>"
    exit 1
fi

sorted_array=$(insertion_sort "$@")
echo "Sorted array: $sorted_array"
