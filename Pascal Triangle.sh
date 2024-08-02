#!/bin/bash
factorial(){
    local num=$1
    local fact=1
    for ((i=1;i<=num;i++));
do
        fact=$((fact*i))
    done
    echo $fact
}
binomial_coefficient(){
    local n=$1
    local k=$2
    local n_fact=$(factorial $n)
    local k_fact=$(factorial $k)
    local n_k_fact=$(factorial $((n - k)))
    echo $((n_fact/(k_fact*n_k_fact)))
}
pascals_triangle(){
    local rows=$1
    for ((n=0;n<rows;n++));do
        for ((k=0;k<=n;k++)); 
do
            echo -n "$(binomial_coefficient $n $k) "
        done
        echo ""
    done
}
read -p "Input Value: " rows
pascals_triangle $rows
