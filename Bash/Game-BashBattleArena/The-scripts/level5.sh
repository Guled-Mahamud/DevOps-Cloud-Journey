#!/bin/bash


cd "$(dirname "$0")" || exit 1  # ensures the script runs from its location, regardless of how it’s called


mkdir -p Battlefield


touch Battlefield/knight.txt Battlefield/sorcerer.txt Battlefield/rogue.txt

# Check if 'knight.txt' exists and move it to a new directory called 'Archive'
if [ -e Battlefield/knight.txt ]; then
    mkdir -p Archive
    mv Battlefield/knight.txt Archive/
fi

# List the contents of both 'Battlefield' and 'Archive'
echo "Contents of Battlefield:"
ls Battlefield
echo -e "\nContents of Archive:"
ls Archive
