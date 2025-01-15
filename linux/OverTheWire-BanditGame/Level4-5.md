# 🎲 Bandit Level 4 → Level 5




## 🔊 Level Objective

The password for the next level is stored in the only **human-readable** file located in the **inhere** directory. Your task is to locate that file and retrieve the password.



### ✏️ Commands You’ll Need


:asterisk:**ls**: List files in a directory.

:asterisk:**file**: Determine the type of a file.

:asterisk:**cat**: View the contents of a file.

:asterisk:**exit**: Log out from the server.




💡 **Reminder**: Always write down the **passwords** as you progress through the levels.





## 📃 Step-by-Step Solution


### Step 1: Connect to the Bandit Server


Start by connecting to the Bandit server using **SSH** with the **Bandit4** username and the password from the previous level.

:white_check_mark:**Run the command:ssh bandit4@bandit.labs.overthewire.org -p 2220**

When prompted, enter the password you retrieved from the previous level.



### Step 2: Navigate to the inhere Directory


Once connected, navigate to the **inhere** directory where the files are stored.

:white_check_mark:**Run the command: cd inhere**

**Explanation**: **cd inhere** Changes the current directory to inhere.



### Step 3: List All Files with Details

Use the **ls -l** command to list the files in the **inhere** directory with detailed information.

:white_check_mark:**Command: ls -l**

**Output**:

-rwxr-xr-x 1 bandit4 bandit4 12345 Jun 17 14:32 -file01 -rwxr-xr-x 1 bandit4 bandit4 23456 Jun 17 14:33 -file02 -rwxr-xr-x 1 bandit4 bandit4 34567 Jun 17 14:34 -file03 ...



### Step 4: Use the find Command to Locate the Human-Readable File

The key here is to find the **human-readable** (non-executable) file. To do this, use the find command.

:white_check_mark:**Run the command: find . ! -executable -exec file {} +**


**Explanation:** This command searches for files that are not executable and then uses the file command to determine the type of each file. The + allows the find command to run the file command on multiple files in one go.


**Output:**

./-file08: data ./-file02: data ./-file09: data ./-file01: data ./-file00: data ./-file05: data **./-file07: ASCII text** ./-file03: data ./-file06: data ./-file04: data


Here, the file **-file07** is identified as **ASCII text**, which indicates that it is a **human-readable file**, unlike the others which are of type data.



### Step 5: Display the Contents of the Human-Readable File

Use the **cat** command to display the contents of **-file07**, the human-readable file.

:white_check_mark:**Run the command: cat ./-file07**

**Expected Output**: The content of the file will display the password for Level 5.


🔑 Password for Level 5: **4oQYVPkxZOOEOO5pTW81FB8j8lxXGUQw** 



### Step 6: Log Out

After retrieving the password, log out from the server.

:white_check_mark: **Run the command: exit**




### :round_pushpin: Key Commands Recap



:one: **cd inhere**: Navigate to the inhere directory.

:two: **. ! -executable -exec file {} +**: Analyze files in the directory to determine their types.

:three:**cat ./** : Read the contents of the human-readable file.

:four: **exit**: Log out from the Bandit server.





### 🔎 Thought Process

:arrow_right: This level highlights the use of the file command, which is essential for determining the nature of files:

:arrow_right: Files can have different formats, and not all are readable as plain text.

:arrow_right: Identifying the human-readable file ensures that you don't waste time examining binary or system files.

:arrow_right: This is a practical approach for navigating directories and extracting useful information.