# Level 7: File Sorting Script

**Mission**: Write a script that sorts all .txt files in a directory by their size, from smallest to largest, and displays the sorted list.




#!/bin/bash

if [ ! -d "$directory" ]
then
    echo "No .txt files found in the current directory."
    exit 1
fi

echo "Sorted .txt files in '$directory' by size:"

find "$directory" -maxdepth 1 -type f -name "*.txt" -exec ls -lh {} + | sort -k 5 -n | awk '{print $9 ": " $5}'