#!/bin/bash


echo "Enter the directory path:"
read directory

# Monitor the directory for changes and log them
inotifywait -m "$directory" | while read line
do
  echo "$(date) - $line" >> changes.log
done