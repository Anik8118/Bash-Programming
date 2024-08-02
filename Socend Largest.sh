#!/bin/bash
read -p "Enter numbers separated by spaces: " -a numbers
if [ "${#numbers[@]}" -lt 2 ]; then
    echo "You need at least two numbers to find the second largest element."
    exit 1
fi
largest=${numbers[0]}
second_largest=-2147483648
for num in "${numbers[@]}"; do
    if [ "$num" -gt "$largest" ]; then
        second_largest=$largest
        largest=$num
    elif [ "$num" -gt "$second_largest" ] && [ "$num" -ne "$largest" ]; then
        second_largest=$num
    fi
done
if [ "$second_largest" -eq -2147483648 ]; then
    echo "There is no valid second largest element."
else
    echo "The second largest element is: $second_largest"
fi
