#!/bin/bash
merge(){
    local left=("$@")
    local mid=$(( ${#left[@]} / 2 ))
    local right=("${left[@]:mid}")

    left=("${left[@]:0:mid}")
    
    local i=0
    local j=0
    local k=0

    while ((i<${#left[@]} && j<${#right[@]}));do
        if ((left[i]<=right[j]));then
            result[k]=${left[i]}
            ((i++))
        else
            result[k]=${right[j]}
            ((j++))
        fi
        ((k++))
    done
    while ((i<${#left[@]}));do
        result[k]=${left[i]}
        ((i++))
        ((k++))
    done

    while ((j <${#right[@]}));do
        result[k]=${right[j]}
        ((j++))
        ((k++))
    done
    echo "${result[@]}"
}
merge_sort() {
    local arr=("$@")
    if ((${#arr[@]} <= 1)); then
        echo "${arr[@]}"
        return
    fi

    local mid=$((${#arr[@]}/2))
    local left=("${arr[@]:0:mid}")
    local right=("${arr[@]:mid}")

    left_sorted=$(merge_sort "${left[@]}")
    right_sorted=$(merge_sort "${right[@]}")
    merge $left_sorted $right_sorted
}
if [ "$#" -eq 0 ]; then
    echo "Usage: $0 <array of integers>"
    exit 1
fi
sorted_array=$(merge_sort "$@")
echo "Sorted array: $sorted_array"
