# Level 6: Argument Parsing

**Mission**: Write a script that accepts a filename as an argument and prints the number of lines in that file. If no filename is provided, display a message saying 'No file provided'.



#!/bin/bash

if [ -z "$1"]; then
  echo "no file provided"
  exit 1
fi 

if [! -f "$1" ]; then
 echo "File not found!"
 exit 1
fi

LINE_COUNT=$(wc -l , "$1")
  echo "The file '$1' has $LINE_COUNT lines."