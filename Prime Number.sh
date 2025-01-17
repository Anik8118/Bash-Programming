#!/bin/bash
read -p "Enter a number: " num
if [ "$num" -lt 2 ]; then
    echo "$num is not a prime number."
    exit 1
fi
is_prime=true
for ((i=2;i<=num/2;i++)); 
do
    if [ $((num % i)) -eq 0 ]; 
then
        is_prime=false
        break
    fi
done
if [ "$is_prime" = true ]; then
    echo "$num is a prime number."
else
    echo "$num is not a prime number."
fi
