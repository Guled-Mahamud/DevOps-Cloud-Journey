# Level 3: Conditional Statements

**Mission**: Write a script that checks if a file named hero.txt exists in the Arena directory. If it does, print Hero found!; otherwise, print Hero missing!.





#!/bin/bash

FILE="hero"

if [[ $FILE ]]; then
   echo "hero found! "

else 

   echo "hero Missing!"

fi