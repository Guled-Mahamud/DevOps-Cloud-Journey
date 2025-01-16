# 🎲 Bandit Level 10 → Level 11



## 🔊 Level Objective


The password for the next level is stored in a file named data.txt. This file contains data encoded in Base64 format. Your task is to decode the data to retrieve the password.



### ✏️ Commands You’ll Need

:asterisk: **cat** View the contents of a file.

:asterisk: **base64 -d** Decode Base64-encoded data.

:asterisk: **exit** Log out from the server.




💡 **Reminder**: Always write down the **passwords** as you progress through the levels.



## 📃 Step-by-Step Solution


### Step 1: Connect to the Bandit Server


Start by connecting to the Bandit server using **SSH** with the **Bandit10** username and the password from the previous level.



:white_check_mark: **Run the command: ssh bandit10@bandit.labs.overthewire.org -p 2220**

When prompted, enter the password you retrieved from the previous level.


### Step 2: View the Contents of data.txt

After logging in, locate and view the content of data.txt to analyze the file.


:white_check_mark: **Run the command: cat data.txt**


**Expected Output**: The file will display a long string of Base64-encoded text.



### Step 3: Decode the Base64 Data


To decode the **Base64-encoded** text, use the base64 command with the **-d (decode)** option.


:white_check_mark: **Run the command: cat data.txt | base64 -d**

**Explanation**:

**cat data.txt**: Displays the content of the file.

**|: Pipes** the output of cat as input to the next command.

**base64 -d**: Decodes the Base64-encoded data.


**Expected Output**:

The decoded text will display the password for Level 11.



🔑 Password for Level 11: **dtR173fZKb0RRsDFSGsg2RWnpNVj3qRr**



### Step 4: Log Out

After retrieving the password, log out from the server.

:white_check_mark: **Run the command: exit**



### :round_pushpin: Key Commands Recap

:one: **cat** View the contents of the file.

:two: **base64 -d** Decode Base64-encoded data.

:three: **exit** Log out from the Bandit server.







### 🔎 Thought Process


:arrow_right: This level introduces Base64 encoding, a common method for encoding binary data into text.

:arrow_right: The base64 command is a powerful tool for both encoding and decoding data.

:arrow_right: Understanding Base64 is essential for handling encoded data in various programming and cybersecurity tasks.

:arrow_right: Combining commands with pipes (|) simplifies workflows and allows seamless data processing.