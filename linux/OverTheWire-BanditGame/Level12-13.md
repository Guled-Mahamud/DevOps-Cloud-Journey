# 🎲 Bandit Level 12 → Level 13



## 🔊 Level Objective

The password for the next level is stored in a file named **data.txt**, which is a **hexdump** of a repeatedly compressed file. You need to extract and decode it to retrieve the password.



### ✏️ Commands You’ll Need


:asterisk: **mkdir** Create a directory.

:asterisk: **mktemp -d** Create a temporary directory with a unique name.

:asterisk: **cp** Copy files to a new location.

:asterisk: **mv** Rename or move files.

:asterisk: **xxd** Convert a hexdump back to binary.

:asterisk: **file** Determine the file type.

:asterisk: **tar, gzip, bzip2, xz** Extract compressed files.

:asterisk: **exit** Log out from the server.



💡 **Reminder**: Always write down the **passwords** as you progress through the levels.




## 📃 Step-by-Step Solution


### Step 1: Prepare the Environment


First, navigate to your current directory to check your location using the **pwd** 

:white_check_mark: **Run the command: **pwd**


This will display **/home/bandit12**, or whichever directory you're in.

Next, create a working directory under **/tmp** using the mktemp command: **mktemp -d**



### Step 2: Copy the File

Copy the data.txt file into the temporary directory you just created:**cp /home/bandit12/data.txt /tmp/<your_tmp_directory>**



### Step 3: Reverse the Hexdump


The file you copied is a hexdump. Use the xxd command to reverse it back into its original binary form: **xxd -r /tmp/<your_tmp_directory>/data.txt > /tmp/<your_tmp_directory>/myfile**


### Step 4: Identify the Compression Format

Now that you have the original file, use the file command to determine what kind of compression has been applied: **file /tmp/<your_tmp_directory>/myfile**

The file should tell you the compression format **(gzip, bzip2, tar, etc.).**


### Step 5: Decompress the File

Based on the file type, use the appropriate decompression tool:


If it's a .gz file, use gunzip: **mv /tmp/<your_tmp_directory>/myfile /tmp/<your_tmp_directory>/myfile.gz**

**gunzip /tmp/<your_tmp_directory>/myfile.gz**


If it's a .tar file, use tar: **tar -xf /tmp/<your_tmp_directory>/myfile.tar**


If it's a .bz2 file, use bzip2: **bzip2 -d /tmp/<your_tmp_directory>/myfile.bz2**



### Step 6: Repeat the Decompression Process

After decompression, run the file command again on the resulting file: **file /tmp/<your_tmp_directory>/myfile3**

Keep repeating the decompression process **(gzip, tar, bzip2)** until the file is recognized as an ASCII text file.



### Step 7: Read the File and Retrieve the Password

Once the file is recognized as **ASCII text**, use cat to read the file and retrieve the password: **cat /tmp/<your_tmp_directory>/myfile3**


The password will be displayed.



### Step 7: Log Out

After retrieving the password, clean up your temporary directory and log out.

:white_check_mark: **Run the commands: exit**




### :round_pushpin: Key Commands Recap


:one: **mktemp -d** Create a unique temporary directory.

:two: **cp, mv** Copy and rename files for organization.

:three: **xxd -r** Convert a hexdump back into binary.

:four: **file** Identify the file type.

:five: **gunzip, bunzip2, tar, unxz** Extract files based on their compression format.

:six: **cat** Read the contents of the file containing the password.

:seven: **rm** Clean up temporary files.

:eight: **exit** Log out from the Bandit server.

🔑 Password for Level 13: **FO5dwFsc0cbaIiH0h8J2eUks2vdTDwAn**




### 🔎 Thought Process


:arrow_right: This level introduces file compression and manipulation, demonstrating how to identify, convert, and extract files.

:arrow_right: The file command is invaluable for determining the format of an unknown file.

:arrow_right:Understanding how to handle various compression methods (gzip, bzip2, tar, xz) is essential for working with archives in real-world systems.

:arrow_right: Temporary directories (/tmp) are useful for testing and temporary workspaces.