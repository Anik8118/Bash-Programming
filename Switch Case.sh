#!/bin/bash
calculate() {
    case $2 in
        +)
            echo "Result: $(($1+$3))"
            ;;
        -)
            echo "Result: $(($1-$3))"
            ;;
        \*)
            echo "Result: $(($1*$3))"
            ;;
        /)
            echo "Result: $(($1/$3))"
            ;;
        %)
            echo "Result: $(($1%$3))"
            ;;
        ^)
            echo "Result: $(($1**$3))"
            ;;
        *)
            echo "Invalid operation. Please use +, -, *, /, %, or ^."
            ;;
    esac
}
echo "Basic Calculator"
echo "Operations: + (sum), - (sub), * (mul), / (div), % (mod), ^ (exp)"
read -p "Enter first number: " num1
read -p "Enter an operator (+, -, *, /, %, ^): " op
read -p "Enter second number: " num2
calculate $num1 $op $num2
