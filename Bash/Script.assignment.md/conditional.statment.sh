#Conditional Statements - Write a script that checks if a file exists and prints a message indicating whether it exists or not. If it exists, the script should also check if the file is readable, writable, or executable. 


#!/bin/bash


# Creating a Directory named 'MyDirectory'

mkdir MyDirectory

# Change the current working directory to 'MyDirectory'

cd MyDirectory

# Create a new text file named 'guled.txt'

touch guled.txt

# Write a string "Hello, here is your file." into 'guled.txt'

echo "Hello, here is your file." > guled.txt

# Display a message to indicate the contents of the file

echo "Contents of guled.txt:"

# Use the 'cat' command to display the contents of 'guled.txt'

cat guled.txt

#the user to enter a file name to check 
echo "Enter the file name to check:"
read filename

# Check if the specified file exists

if [ -e "$filename" ]; then
    echo "The file '$filename' exists."

    # Check file permissions
    [ -r "$filename" ] && echo "It is readable."
    [ -w "$filename" ] && echo "It is writable."
    [ -x "$filename" ] && echo "It is executable."
else
    echo "The file '$filename' does not exist."   # If the file doesn't exist, display a message stating so
fi
