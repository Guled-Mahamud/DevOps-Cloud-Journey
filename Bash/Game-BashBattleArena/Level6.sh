# Level 6: Argument Parsing

**Mission**: Write a script that accepts a filename as an argument and prints the number of lines in that file. If no filename is provided, display a message saying 'No file provided'.



#!/bin/bash

file=$1

if [ -z "$1" ]; then
  echo "No file provided"
  exit 1
fi

# Count and print the number of lines
wc -l < "$1"