#!/bin/bash

if [ ! -d "$directory" ]
then
    echo "No .txt files found in the current directory."
    exit 1
fi

echo "Sorted .txt files in '$directory' by size:"

find "$directory" -maxdepth 1 -type f -name "*.txt" -exec ls -lh {} + | sort -k 5 -n | awk '{print $9 ": " $5}'

# It uses the find command to locate all .txt files in the given directory (without going into subdirectories due to -maxdepth 1).
# The ls -lh command is used to list the files along with their sizes.
# The sort -k 5 -n command sorts the files based on the file size (the 5th column of the ls -lh output).
# The awk command formats the output to show the file name and size.