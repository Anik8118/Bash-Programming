#!/bin/bash
linear_search() {
    local arr=("$@")
    local n=$((${#arr[@]} - 1))
    local target=${arr[$n]}
    for ((i=0;i<n;i++));do
        if [ "${arr[i]}" -eq "$target" ]; then
            echo "Element found at index $i"
            return 0
        fi
    done
    echo "Element not found"
    return 1
}
if [ "$#" -lt 2 ];then
    echo "Usage: $0 <array of integers> <target>"
    exit 1
fi
linear_search "$@"
