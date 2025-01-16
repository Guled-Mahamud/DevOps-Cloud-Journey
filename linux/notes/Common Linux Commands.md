## Common Linux Commands 


File and Directory Commands

    1. ls
        ○ Lists files and directories in the current directory.
        ○ Example: ls shows what’s in the folder you're in.

    2. cd
        ○ Changes the current directory.
        ○ Example: cd Documents moves you into the "Documents" folder.

    3. pwd
        ○ Prints the full path of your current directory.
        ○ Example: /home/username/Documents.
    4. mkdir
        ○ Creates a new directory (folder).
        ○ Example: mkdir new_folder makes a folder named "new_folder".
    5. rm
        ○ Deletes files or directories.
        ○ Example: rm file.txt deletes the file "file.txt".
        ○ Use rm -r folder_name to delete a folder and its contents.
    6. cp
        ○ Copies files or directories.
        ○ Example: cp file.txt /home/user/backup/ copies "file.txt" to the "backup" folder.
    7. mv
        ○ Moves or renames files.
        Example: mv file.txt new_name.txt renames "file.txt" to "new_name.txt".

Viewing and Editing Files

    8. cat
        ○ Displays the contents of a file.
        ○ Example: cat file.txt shows what’s inside "file.txt".
    9. nano
        ○ Opens a simple text editor in the terminal.
        ○ Example: nano file.txt lets you edit "file.txt".
    10. less
        ○ Lets you view a file page by page (good for large files).
        ○ Example: less file.txt opens "file.txt" for reading.
    11. head
        ○ Shows the first few lines of a file.
        ○ Example: head file.txt shows the top 10 lines of "file.txt".
    12. tail
        ○ Shows the last few lines of a file.
        Example: tail file.txt shows the bottom 10 lines of "file.txt".

File Permissions and Ownership

    13. chmod
        ○ Changes file permissions.
         ○ Example: chmod 755 file.sh makes "file.sh" executable.
    14. chown
        ○ Changes the owner of a file.
        Example: chown username file.txt gives ownership of "file.txt" to "username".

System Commands

    15. sudo
        ○ Runs a command as the superuser (admin).
        ○ Example: sudo apt update updates the system (Debian-based).
    16. df
        ○ Shows disk space usage.
        ○ Example: df -h gives an easy-to-read overview of storage.
    17. top
        ○ Displays running processes and system performance (like Task Manager).
        ○ Example: Just type top to monitor what’s running.
    18. ps
        ○ Lists running processes.
        ○ Example: ps aux shows detailed info about processes.
    19. kill
        ○ Stops a running process.
        ○ Example: kill 12345 stops the process with ID 12345.
    20. reboot
        ○ Restarts the computer.
        ○ Example: sudo reboot.
    21. shutdown
        ○ Turns off the computer.
        Example: sudo shutdown now.

    Networking Commands

        22. ping
            ○ Checks the connection to another computer/server.
            ○ Example: ping google.com tests if Google is reachable.
        23. curl
            ○ Downloads data from a URL.
            ○ Example: curl http://example.com gets the webpage content.
        24. wget
            ○ Downloads files from the internet.
            ○ Example: wget http://example.com/file.zip saves the file to your system.
    
    Search and Find

        25. find
            ○ Searches for files or directories.
            ○ Example: find /home -name file.txt looks for "file.txt" in your home directory.
        26. grep
            ○ Searches for text within files.
            ○ Example: grep "hello" file.txt finds "hello" in "file.txt".
    
    Compression and Archiving

        27. tar
            ○ Archives files into a single file or extracts them.
            ○ Example: tar -cvf archive.tar folder/ creates an archive of "folder".
        28. zip
            ○ Compresses files into a .zip file.
            ○ Example: zip archive.zip file.txt compresses "file.txt" into "archive.zip".
        29. unzip
            ○ Extracts a .zip file.
            ○ Example: unzip archive.zip.
    
    Others
        30. man
            ○ Opens the manual for a command.
            ○ Example: man ls shows details about the ls command.
        31. history
            ○ Shows the history of commands you’ve used.
            ○ Example: history displays your recent commands.
        32. clear
        Clears the terminal screen. 