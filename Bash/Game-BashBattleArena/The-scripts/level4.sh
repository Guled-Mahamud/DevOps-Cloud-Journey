#!/bin/bash

SOURCE_DIR=~/DevOps-Cloud-Journey/bash/Game-BashBattleArena/The-scripts/arena
DEST_DIR=~/DevOps-Cloud-Journey/bash/Game-BashBattleArena/The-scripts/arena/backup

  echo "Copying .txt files from $SOURCE_DIR to $DEST_DIR ..."
  cp "$SOURCE_DIR"/*.txt  "$DEST_DIR" 2>/dev/null

  # 2>/dev/null means "hide error messages." It sends them to a special place where they disappear and aren't shown.

if [ $? -eq 0 ]; then 
  echo "Files copied successfully!"
else
  echo "No .txt files found in "SOURCE_DIR"."

fi 


