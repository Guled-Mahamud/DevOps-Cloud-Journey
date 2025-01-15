# 🎲 Bandit Level 3 → Level 4



## 🔊 Level Objective


Your goal in this level is to locate a hidden file named .hidden in the home directory of the Bandit3 user. This file contains the password for the next level, Bandit4.

### ✏️Commands You’ll Need


:asterisk:**SSH**: Securely connect to the Bandit server.

:asterisk:**ls**: List files in a directory.

:asterisk:**ls -a**: List all files, including hidden files.

:asterisk:**cat**: View the contents of a file.

:asterisk:**exit**: Log out from the server.



💡 **Reminder**: Always write down the **passwords** as you progress through the levels.



## 📃 Step-by-Step Solution


### Step 1: Connect to the Bandit Server


Start by connecting to the Bandit server using SSH with the Bandit3 username and the password from the previous level.


:white_check_mark:**Run the command: ssh bandit3@bandit.labs.overthewire.org -p 2220**

When prompted, enter the password you retrieved from the previous level.



### Step 2: List Files in the Directory


After logging in, you need to locate the hidden file in the home directory. To do this, you must list all files, including hidden ones.


:white_check_mark: **Run the command: ls -a**


**Explanation**: **ls -a**: Lists all files in the directory, including hidden files (those starting with a .).


You should see a file named .hidden in the output.



### Step 3: Read the Contents of the Hidden File


Now that you’ve found the hidden file, use the cat command to view its contents.

:white_check_mark: **Run the command: cat .hidden**

**Explanation**: **cat** Displays the contents of a file.


This will show the password for the next level, Bandit4.



### Step 4: Log Out


After retrieving the password, log out of the server to complete this level.

:white_check_mark:**Run the command: exit**

**exit**: Ends your terminal session and disconnects you from the server.




### :round_pushpin: Key Commands Recap

:one: **SSH**: Connect to the server securely.

:two: **ls -a**: List all files, including hidden ones.

:three: **cat .hidden**: Read the contents of the hidden file.


🔑 Password for Level 4: **2WmrDFRmJIq3IPxneAaMGhap0pFhF3NJ**




### 🔎 Thought Process

:arrow_right:This level teaches you how to locate and interact with **hidden files. Hidden files** are common in Linux, often used to store system settings or sensitive information. 


:arrow_right:Learning to use **ls -a** is an essential skill for working in terminal environments.