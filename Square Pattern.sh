#!/bin/bash
read -p "Input number: " n
# Top half of the square
for ((i=1; i<=n; i++))
do
    for ((j=1;j<=n;j++))
    do
        echo -n "*"
    done
    echo " "
done
for ((i=n; i>=1; i--))
do
    for ((j=1; j<=n; j++))
    do
        echo -n "*"
    done
    echo " "
done
