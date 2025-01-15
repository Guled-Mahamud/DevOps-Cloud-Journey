# 🎲 Bandit Level 5 → Level 6


## 🔊 Level Objective


Your goal in this level is to locate a file within the **inhere** directory that is **human-readable**, **1033 bytes in size**, and **not executable**. This file contains the password for the next level, **Bandit6**.


### ✏️ Commands You’ll Need

:asterisk :**SSH**: Securely connect to the Bandit server.

:asterisk :**ls**: List files in a directory.

:asterisk: **cd**: Change directories.

:asterisk: **find**: Search for files based on specific criteria.

:asterisk: **file**: Check the type of a file.

:asterisk: **cat**: View the contents of a file.

:asterisk: **exit**: Log out from the server.


💡 Reminder: Always write down the passwords as you progress through the levels.



## 📃 Step-by-Step Solution

### Step 1: Connect to the Bandit Server


Start by connecting to the Bandit server using **SSH** with the **Bandit5** username and the password from the previous level.

:white_check_mark: **Run the command: ssh bandit5@bandit.labs.overthewire.org -p 2220**

When prompted, enter the password you retrieved from the previous level.


### Step 2: Locate the inhere Directory

After logging in, check the files and directories in the home directory. You will find a directory named inhere.

:white_check_mark: **Run the command: ls**

**Explanation**: **ls**: Lists all files and directories in the current directory.



### Step 3: Navigate into the inhere Directory


Move into the inhere directory to search for the target file.

:white_check_mark: **Run the command: cd inhere**

**Explanation**: **cd** Changes your current directory to the specified one.


### Step 4: Search for the Target File

Use the find command to search for a file with the specified characteristics: 1033 bytes in size, human-readable, and not executable.

:white_check_mark: **Run the command: find . -type f -size 1033c ! -executable**

**Explanation:**

**find .**: Searches in the current directory and subdirectories.

**-type f**: Limits the search to files only.

**-size 1033c**: Finds files that are exactly 1033 bytes in size (c = bytes).

**! -executable**: Excludes executable files.


The output will show the path of the file that matches these criteria.

**Output:**

./-file10: ASCII text ./-file15: ASCII text ./-file20: data

Here, files marked as **ASCII text** are human-readable, and one of them will be **1033 bytes in size**.



### Step 5: Verify the File

Once you have confirmed the correct file, use the cat command to read its contents.

:white_check_mark: **Run the command: cat ./-file10**

**Explanation**: **cat** Displays the contents of the file. This will reveal the password for the next level.


### Step 7: Log Out

After retrieving the password, log out of the server to complete this level.

:white_check_mark: **Run the command: exit**
Explanation:



### :round_pushpin: Key Commands Recap


:one: **SSH**: Connect to the server securely.

:two: **ls**: List files in the directory.

:three: **cd inhere**: Navigate to the inhere directory.

:four: **find . -type f -size 1033c ! -executable**: Search for the file based on 
size and permissions.

:five: **file ./filename**: Verify the file is human-readable.

:six: **cat ./filename**: Read the contents of the file.


🔑 Password for Level 6: **HWasnPhtq9AVKe0dmk45nxy20cvUa6EG**




### 🔎 Thought Process


:arrow_right: This level introduces the find command, which is a powerful tool for locating files based on specific attributes like size and permissions. 

:arrow_right: Combined with file and cat, this approach ensures you can locate and verify the correct file efficiently. 

:arrow_right: These skills are essential for working with large file systems in Linux environments.