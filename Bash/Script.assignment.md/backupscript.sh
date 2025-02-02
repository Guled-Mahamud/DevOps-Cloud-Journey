# Backup Script - Create a script that copies all .txt files from a specified directory to a backup directory. If the backup directory doesn’t exist, the script should create it first. 




#!/bin/bash

 
# please enter the directory you wish backup the txt file from


echo "Enter the directory to backup .txt files from:"
read source_directory

# enter the backup directory

echo "Enter the backup directory:"
read backup_directory


# Checking if the source directory exists

if [ ! -d "$source_directory" ]; then
  echo "Source directory does not exist."
  exit 1
fi

# Checking if the backup directory exists

if [ ! -d "$backup_directory" ]; then
  echo "Backup directory does not exist. Creating it..."
  mkdir -p "$backup_directory"
fi

# The txt. file back up is starting 

echo "Backing up .txt files from $source_directory to $backup_directory..."
cp "$source_directory"/*.txt "$backup_directory"

# The backup has completed

echo "Backup completed successfully."