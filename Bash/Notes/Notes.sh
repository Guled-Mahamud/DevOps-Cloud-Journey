# Notes 

! =  can negate the result of a condition in an if statement.For example, if you want to check if a file does not exist, you would use ! to negate the result of -e (which checks if a file exists):

# Check if the file does not exist
if [ ! -f "$1" ]; then
  echo "File does not exist."
else
  echo "File exists."
fi





-z is a string test operator in bash that checks if the length of a string is zero (empty). It returns true if the string is empty, and false if the string has any content.

name=""
if [ -z "$name" ]; then
  echo "Name is empty."
else
  echo "Name is not empty."
fi






exec: Replaces the current shell or script with a new command, effectively terminating the current process and executing a new one.
After exec > output.txt is executed, all further output will be written to output.txt instead of the terminal.


#!/bin/bash

echo "This will print to the terminal."

# Redirect all output to output.txt using exec
exec > output.txt

echo "This will be written to output.txt instead of the terminal."
echo "So will this."