# Level 5: The Boss Battle - Combining Basics

**Mission**: Combine what you've learned! Write a script that:

1. Creates a directory names 'Battlefield'
2. Inside Battlefield, create files named knight.txt, sorcerer.txt, and rogue.txt.
3. Check if knight.txt exists; if it does, move it to a new directory called Archive.
4. List the contents of both Battlefield and Archive.




#!/bin/bash


cd "$(dirname "$0")" || exit 1  

# ensures the script runs from its location, regardless of how it’s called


mkdir -p Battlefield


touch Battlefield/knight.txt Battlefield/sorcerer.txt Battlefield/rogue.txt


if [ -e Battlefield/knight.txt ]; then
    mkdir -p Archive
    mv Battlefield/knight.txt Archive/
fi


echo "Contents of Battlefield:"
ls Battlefield
echo -e "\nContents of Archive:"
ls Archive