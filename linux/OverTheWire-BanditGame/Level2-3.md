# 🎲 Bandit Level 2 → Level 3



## 🔊 Level Objective


Your goal in this level is to locate a file named **spaces in this filename** in the home directory of the **Bandit2** user. This file contains the password for the next level, Bandit3.



### ✏️ Commands You’ll Need

**SSH**: Securely connect to the Bandit server.

**ls**: List files in a directory.

**cat**: View the contents of a file.

**exit**: Log out from the server.



💡 **Reminder**: Always write down the **passwords** as you progress through the levels.




## 📃 Step-by-Step Solution


### Step 1: Connect to the Bandit Server


Start by connecting to the Bandit server using SSH with the Bandit2 username and the password from the previous level.

Run the command:**ssh bandit2@bandit.labs.overthewire.org -p 2220**

When prompted, enter the password you retrieved from previous level



### Step 2: List Files in the Directory


After logging in, check the files in the home directory.

Run the command: **ls**


**ls**: Lists all files in the current directory. You should see a file named spaces in this filename.




### Step 3: Read the Contents of the File with Spaces in Its Name -


To read a file with spaces in its name, you need to handle it carefully by enclosing the name in quotes or using escape characters.

Run the command: **cat "spaces in this filename"** 

**Explanation**: Enclosing the file name in double quotes (") tells the terminal to treat the entire name as one file.


The output will display the password for Level 3.



### Step 4: Log Out

After retrieving the password, end your session by logging out.

Run the command: **exit**







### :round_pushpin: Key Commands Recap

:one:**SSH**: Connect to the server securely.

:two:**ls**: List files in the directory to locate the target file.

:three:**cat "filename" or cat filename\ with\ spaces**: Read files with spaces in their names.

🔑 Password for Level 3: **263JGJPfgU6LtdEvgfWU1XP5yac29mFx**


### 🔎 Thought Process

This level teaches you how to handle file names with spaces. By using quotes or escape characters, you can interact with such files smoothly. 

These techniques are essential for navigating and manipulating files in real-world terminal environments.