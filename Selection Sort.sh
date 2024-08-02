#!/bin/bash
selection_sort() {
    local arr=("$@")
    local n=${#arr[@]}
    for ((i=0;i<n-1;i++));do
        min_index=$i

        for ((j=i+1;j<n;j++));do
            if ((arr[j]<arr[min_index]));then
                min_index=$j
            fi
        done
        if ((min_index != i));then
            temp=${arr[i]}
            arr[i]=${arr[min_index]}
            arr[min_index]=$temp
        fi
    done
    echo "${arr[@]}"
}
if [ "$#" -eq 0 ]; then
    echo "Usage: $0 <array of integers>"
    exit 1
fi
sorted_array=$(selection_sort "$@")
echo "Sorted array: $sorted_array"
