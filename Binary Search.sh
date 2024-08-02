#!/bin/bash
binary_search(){
    local arr=("$@")
    local target=${arr[-1]}
    local left=0
    local right=$((${#arr[@]} - 2))
    while ((left<=right));do
        mid=$(((left+right)/2))
        if [ "${arr[mid]}" -eq "$target" ];then
            echo "Element found at index $mid"
            return 0
        elif [ "${arr[mid]}" -lt "$target" ];then
            left=$((mid + 1))
        else
            right=$((mid - 1))
        fi
    done
    echo "Element not found"
    return 1
}
if [ "$#" -lt 2 ];then
    echo "Usage: $0 <sorted array of integers> <target>"
    exit 1
fi
binary_search "$@"
