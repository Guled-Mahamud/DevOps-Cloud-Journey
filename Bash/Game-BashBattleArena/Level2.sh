# Level 2: Variables and Loops

**Mission**: Create a script that outputs the numbers 1 to 10, one number per line.






#!/bin/bash

count=1

while [ $count -le 10 ]
do 
   echo "count: $count"
   ((count++))
   sleep 2

done