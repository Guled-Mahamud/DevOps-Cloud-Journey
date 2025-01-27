#!/bin/bash

echo "Enter the directory:"
read directory

echo "Enter the word or phrase to search for:"
read search


# Search for the word in all .log files in the directory
grep -l "$search" "$directory"/*.log

if [ $? -ne 0 ]; then
  echo "No files found with that word or phrase."
fi