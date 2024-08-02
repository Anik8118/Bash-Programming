#!/bin/bash
floyd_triangle() {
    local rows=$1
    local num=1
    for ((i=1;i<=rows;i++)); 
do
        for ((j=1;j<=i;j++)); 
do
            echo -n "$num "
            num=$((num+1))
        done
        echo ""
    done
}
read -p "Input Value: " rows
floyd_triangle $rows
