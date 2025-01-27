# Level 9: Script to Monitor Directory Changes

**Mission**: Write a script that monitors a directory for any changes (file creation, modification, or deletion) and logs the changes with a timestamp.




#!/bin/bash


echo "Enter the directory path:"
read directory

# Monitor the directory for changes and log them
inotifywait -m "$directory" | while read line
do
  echo "$(date) - $line" >> changes.log
done