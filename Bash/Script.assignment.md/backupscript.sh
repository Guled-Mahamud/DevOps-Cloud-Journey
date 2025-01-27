# Backup Script - Create a script that copies all .txt files from a specified directory to a backup directory. If the backup directory doesn’t exist, the script should create it first. 




#!/bin/bash

 

echo "Enter the directory to backup .txt files from:"
read source_directory


echo "Enter the backup directory:"
read backup_directory


if [ ! -d "$source_directory" ]; then
  echo "Source directory does not exist."
  exit 1
fi


if [ ! -d "$backup_directory" ]; then
  echo "Backup directory does not exist. Creating it..."
  mkdir -p "$backup_directory"
fi


echo "Backing up .txt files from $source_directory to $backup_directory..."
cp "$source_directory"/*.txt "$backup_directory"


echo "Backup completed successfully."