#!/bin/bash


# File Operations - Write a script that creates a directory, navigates into it, creates a file inside it, writes some text to the file, and then displays the contents of the file. 

mkdir MyDirectory

cd MyDirectory

touch test.txt

echo "Hello, here is the test file." > test.txt

echo "Contents of myfile.txt:"
cat myfile.txt