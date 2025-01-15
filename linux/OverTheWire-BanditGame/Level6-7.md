# 🎲 Bandit Level 6 → Level 7


## 🔊 Level Objective

The password for the next level is stored somewhere on the server and has the following properties:

**It is owned by user bandit7.**

**It is owned by group bandit6.**

**It is exactly 33 bytes in size.**

Your task is to locate this file and retrieve the password.



### ✏️ Commands You’ll Need

:asterisk: **find**: Search for files on the system based on various criteria.

:asterisk: **cat**: View the contents of a file.

:asterisk: **exit**: Log out from the server.


💡 **Reminder**: Always write down the **passwords** as you progress through the levels.



## 📃 Step-by-Step Solution


### Step 1: Connect to the Bandit Server

Start by connecting to the Bandit server using **SSH** with the **Bandit6** username and the password from the previous level.

:white_check_mark: **Run the command: ssh bandit6@bandit.labs.overthewire.org -p 2220**


### Step 2: Use the find Command to Locate the File

To locate the file with the specified properties, use the find command.

:white_check_mark: **Run the command: find / -user bandit7 -group bandit6 -size 33c 2>/dev/null**


**Explanation**:

**find /**: Searches the entire file system, starting at the root directory /.

**-user bandit7**: Looks for files owned by the user bandit7.

**-group bandit6**: Filters files owned by the group bandit6.

**-size 33c**: Filters files that are exactly 33 bytes in size (c indicates bytes).

**2>/dev/null**: Suppresses permission-denied error messages to clean up the output.


**Expected Output**:

**/var/lib/dpkg/info/bandit7.password**


### Step 3: Read the Contents of the File


Once you have the file path, use the cat command to view its contents and retrieve the password.

:white_check_mark: **Run the command: cat /var/lib/dpkg/info/bandit7.password**


**Expected Output**: The password for Level 7 will be displayed.


### Step 4: Log Out

After retrieving the password, log out from the server.


:white_check_mark: **Run the command: exit**



### :round_pushpin: Key Commands Recap



:one: **find / -user bandit7 -group bandit6 -size 33c 2>/dev/null**: Locates the file based on ownership, group, and size.

:two: **cat**: Reads the content of the located file.

:three: **exit**: Logs out from the Bandit server.


🔑 Password for Level 7: **morbNTDkSW6jIlUc0ymOdMaLnOlFVAaj**




### 🔎 Thought Process



:arrow_right: This level introduces the find command, a powerful tool for searching files based on specific criteria:

:arrow_right: Using find, you can filter files by attributes such as size, ownership, or permissions.

:arrow_right: Suppressing errors (2>/dev/null) ensures that only useful results are displayed.

:arrow_right: This combination of commands makes find invaluable for system administration and troubleshooting.