#!/bin/bash

count=1

while [ $count -le 10 ]
do 
   echo "count: $count"
   ((count++))
   sleep 2

done