# File Operations - Write a script that creates a directory, navigates into it, creates a file inside it, writes some text to the file, and then displays the contents of the file. 


#!/bin/bash

# Creating a directory named MyDirectory
mkdir MyDirectory
# Change the current working directory to 'MyDirectory'
cd MyDirectory
# Create a new text file named 'test'
touch test.txt

# Write a string "Hello, here is test file." into 'test.txt'
echo "Hello, here is the test file." > test.txt

# Display a message to indicate the contents of the file
echo "Contents of test.txt:"

# Use the 'cat' command to display the contents of 'test.txt'
cat test.txt