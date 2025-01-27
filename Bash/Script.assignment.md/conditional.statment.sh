#!/bin/bash

#Conditional Statements - Write a script that checks if a file exists and prints a message indicating whether it exists or not. If it exists, the script should also check if the file is readable, writable, or executable. 


mkdir MyDirectory

cd MyDirectory

touch guled.txt

echo "Hello, here is your file." > guled.txt


echo "Contents of guled.txt:"
cat guled.txt

echo "Enter the file name to check:"
read filename

if [ -e "$filename" ]; then
    echo "The file '$filename' exists."

    # Check file permissions
    [ -r "$filename" ] && echo "It is readable."
    [ -w "$filename" ] && echo "It is writable."
    [ -x "$filename" ] && echo "It is executable."
else
    echo "The file '$filename' does not exist."
fi
