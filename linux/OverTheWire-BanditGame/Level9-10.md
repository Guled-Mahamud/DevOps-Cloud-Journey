# 🎲 Bandit Level 9 → Level 10



## 🔊 Level Objective

The password for the next level is stored in a file named **data.txt**. The password is one of the **human-readable** strings in the file and is preceded by several = characters. Your task is to locate and retrieve this password.



### ✏️ Commands You’ll Need


:asterisk: **cat**: View the contents of a file.

:asterisk: **strings**: Extract human-readable text from binary or non-text files.

:asterisk: **grep**: Search for specific patterns in text.

:asterisk: **exit**: Log out from the server.



💡 **Reminder**: Always write down the **passwords** as you progress through the levels.



## 📃 Step-by-Step Solution


### Step 1: Connect to the Bandit Server


Start by connecting to the Bandit server using SSH with the Bandit9 username and the password from the previous level.


:white_check_mark: **Run the command: ssh bandit9@bandit.labs.overthewire.org -p 2220**


When prompted, enter the password you retrieved from the previous level.



### Step 2: Analyze the File with strings


The file **data.txt** may contain **non-readable characters**. Use the **strings** command to extract **human-readable** text.

:white_check_mark: **Run the command: strings data.txt**


**Explanation**: **strings data.txt** Extracts and displays all human-readable strings from the **file data.txt.**



### Step 3: Locate the Password Using grep

The password is preceded by several = characters. Use the grep command to search for lines containing =.

:white_check_mark:**Run the command: strings data.txt | grep '='**


**Explanation**:

**strings data.txt**: Extracts readable text.
**|:** Pipes the output of strings into the next command.
**grep '='**: Filters the output to show only lines containing =.


**Expected Output**:

You will see a line containing the password preceded by = characters.



### Step 4: Identify and Note the Password


From the filtered output, identify the password (the text following the = characters). Copy it for use in the next level.



🔑 Password for Level 10: **FGUW5ilLVJrxX9kMYMmlN4MgbpfMiqey**




### Step 5: Log Out

After retrieving the password, log out from the server.

:white_check_mark: **Run the command: exit**



### :round_pushpin: Key Commands Recap


:one: **strings**: Extract human-readable text from the file.

:two: **grep '='**: Filter lines containing = characters.

:three: **exit**: Log out from the Bandit server.







### 🔎 Thought Process


:arrow_right: This level teaches how to extract meaningful data from files with mixed content:


:arrow_right: **strings** is a useful tool for working with binary or non-text files, as it isolates readable characters.


:arrow_right: **grep** simplifies pattern matching, helping you pinpoint specific lines of interest.


:arrow_right: Combining strings and grep demonstrates the power of using multiple commands in sequence with pipes (|).