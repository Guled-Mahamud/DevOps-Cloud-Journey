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

When prompted, enter the password you retrieved from Level 3.



### Step 2: Navigate to the inhere Directory


Once connected, navigate to the **inhere** directory where the files are stored.

:white_check_mark:**Run the command: cd inhere**

**Explanation**: **cd inhere**: Changes the current directory to inhere.



### 3: Identify the Human-Readable File

Use the file command to check the type of each file in the **inhere** directory.

:white_check_mark: **Run the command: file * ***
Explanation:

**file * ***: Analyzes all files in the current directory (* means all files) and displays their types.

Look for a file type such as **"ASCII text,"** as this indicates it is human-readable.

**Expected Output**: You will see a list of files with their types. Locate the one marked as **ASCII** text or similar.



### Step 4: Read the Human-Readable File

Once you have identified the **human-readable file**, use the **cat** command to read its contents.

:white_check_mark:**Run the command: cat ./-file07** 

**Expected Output**: The content of the file will display the password for Level 5.



### Step 5: Log Out

After retrieving the password, log out from the server.

**Run the command: exit**



### :round_pushpin: Key Commands Recap


:one: cd inhere: Navigate to the inhere directory.

:two: **file ***: Analyze files in the directory to determine their types.

:three:**cat ./** : Read the contents of the human-readable file.

:four: **exit**: Log out from the Bandit server.


🔑 Password for Level 5: **4oQYVPkxZOOEOO5pTW81FB8j8lxXGUQw**



### 🔎 Thought Process

:arrow_right: This level highlights the use of the file command, which is essential for determining the nature of files:

:arrow_right: Files can have different formats, and not all are readable as plain text.

:arrow_right: Identifying the human-readable file ensures that you don't waste time examining binary or system files.

:arrow_right: This is a practical approach for navigating directories and extracting useful information.