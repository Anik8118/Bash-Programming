#!/bin/bash
heapify() {
    local arr=("$@")
    local n=${arr[0]}
    local i=${arr[1]}
    local largest=$i
    local left=$((2*i+1))
    local right=$((2*i+2))
    if ((left<n && arr[left+2]>arr[largest+2]));then
        largest=$left
    fi
    if ((right<n && arr[right+2]>arr[largest+2]));then
        largest=$right
    fi
    if ((largest!=i));then
        temp=${arr[i+2]}
        arr[i+2]=${arr[largest+2]}
        arr[largest+2]=$temp
        heapify "${arr[@]:0:2}" "${arr[@]:2}"
    fi
}

heap_sort(){
    local arr=("$@")
    local n=${#arr[@]}

    for ((i=n/2-1;i>=0;i--));do
        heapify $n $i "${arr[@]}"
    done
    for ((i=n-1;i>0;i--));do
        temp=${arr[0]}
        arr[0]=${arr[i]}
        arr[i]=$temp

        heapify $i 0 "${arr[@]:0:$i}" "${arr[@]:$i}"
    done

    echo "${arr[@]}"
}

if [ "$#" -eq 0 ]; then
    echo "Usage: $0 <array of integers>"
    exit 1
fi
sorted_array=$(heap_sort "$@")
echo "Sorted array: $sorted_array"
