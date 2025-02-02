# Basic Arithmetic - Write a script that takes two numbers as input from the user and performs basic arithmetic operations (addition, subtraction, multiplication, and division) and then displays all the answers of those operations in the terminal. 


#!/bin/bash


#  Enter the first nmumber 

echo "Enter the first number:"
read num1

# Enter the second number 
echo "Enter the second number:"
read num2

# Perform addition, subtraction and multiplication, store the result in each variables

addition=$((num1 + num2))
subtraction=$((num1 - num2))
multiplication=$((num1 * num2))

# Check if the second number is not zero before performing division

if [ "$num2" -ne 0 ]; then
    division=$((num1 / num2))
else
    division="undefined (cannot divide by zero)"
fi

# Display all the results from the operation

echo "Results:"
echo "Addition: $addition"
echo "Subtraction: $subtraction"
echo "Multiplication: $multiplication"
echo "Division: $division"