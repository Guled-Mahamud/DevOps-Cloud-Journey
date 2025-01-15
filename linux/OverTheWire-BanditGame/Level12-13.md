🎲 Bandit Level 12 → Level 13
🔊 Level Objective
The password for the next level is stored in a file named data.txt, which is a hexdump of a repeatedly compressed file. You need to extract and decode it to retrieve the password.

✏️ Commands You’ll Need
mkdir: Create a directory.
mktemp -d: Create a temporary directory with a unique name.
cp: Copy files to a new location.
mv: Rename or move files.
xxd: Convert a hexdump back to binary.
file: Determine the file type.
tar, gzip, bzip2, xz: Extract compressed files.
exit: Log out from the server.

💡 Reminder: Always write down the passwords as you progress through the levels.

📃 Step-by-Step Solution
Step 1: Connect to the Bandit Server
Start by connecting to the Bandit server using SSH with the Bandit12 username and the password from the previous level.

Run the command:

bash
Copy code
ssh bandit12@bandit.labs.overthewire.org -p 2220
When prompted, enter the password you retrieved from Level 11.

Step 2: Create a Temporary Working Directory
To avoid clutter in the home directory, create a unique temporary directory under /tmp.

Run the command:

bash
Copy code
mktemp -d
Expected Output:
A path to a temporary directory, e.g., /tmp/tmp.ABCD1234.

Step 3: Copy and Rename the Data File
Navigate to the temporary directory and copy the data.txt file there.

Run the commands:

bash
Copy code
cd /tmp/tmp.ABCD1234  # Replace with your temporary directory
cp ~/data.txt .       # Copy the file to your temporary directory
mv data.txt file.bin  # Rename the file for clarity
Step 4: Convert the Hexdump to Binary
Use the xxd command to revert the hexdump into a binary file.

Run the command:

bash
Copy code
xxd -r file.bin decoded.bin
Step 5: Extract the File
Determine the file type and extract it repeatedly until you reach the password.

Run the command:

bash
Copy code
file decoded.bin
The output will indicate the type of compression (e.g., gzip, bzip2, tar, xz). Extract the file using the corresponding tool, repeating the process as needed.

Examples of extraction commands:

gzip:

bash
Copy code
mv decoded.bin file.gz  # Rename for clarity
gunzip file.gz
bzip2:

bash
Copy code
mv decoded.bin file.bz2
bunzip2 file.bz2
tar:

bash
Copy code
tar -xf decoded.bin
xz:

bash
Copy code
mv decoded.bin file.xz
unxz file.xz
Repeat these steps until you uncover the final file containing the password.

Step 6: Read the Password
Once you reach a plain text file, use cat to read its contents.

Run the command:

bash
Copy code
cat final_file.txt  # Replace with the actual file name
The file will display the password for Level 13.

Step 7: Log Out
After retrieving the password, clean up your temporary directory and log out.

Run the commands:

bash
Copy code
rm -r /tmp/tmp.ABCD1234  # Replace with your temporary directory
exit
:round_pushpin: Key Commands Recap
:one: mktemp -d: Create a unique temporary directory.
:two: cp, mv: Copy and rename files for organization.
:three: xxd -r: Convert a hexdump back into binary.
:four: file: Identify the file type.
:five: gunzip, bunzip2, tar, unxz: Extract files based on their compression format.
:six: cat: Read the contents of the file containing the password.
:seven: rm: Clean up temporary files.
:eight: exit: Log out from the Bandit server.

🔑 Password for Level 13: (Copy the output of the final file for future use.)

🔎 Thought Process
This level introduces file compression and manipulation, demonstrating how to identify, convert, and extract files.

The file command is invaluable for determining the format of an unknown file.
Understanding how to handle various compression methods (gzip, bzip2, tar, xz) is essential for working with archives in real-world systems.
Temporary directories (/tmp) are useful for testing and temporary workspaces.