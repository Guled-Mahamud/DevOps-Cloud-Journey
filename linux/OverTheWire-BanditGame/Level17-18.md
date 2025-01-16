# 🎲 Bandit Level 17 → Level 18


## 🔊 Level Objective



Your task in this level is to find the password for Bandit18. There are two files in the home directory: **passwords.old** and **passwords.new**. The password for the next level is in **passwords.new**, and it is the only line that has been changed between the two files. You need to identify the difference between the two files.



### ✏️ Commands You’ll Need


:asterisk: **SSH**: Securely connect to the Bandit server.

:asterisk: **ls**: List files in a directory.

:asterisk: **diff**: Compare two files line by line.

:asterisk: **exit**: Log out from the server.



💡 **Reminder**: Always write down the **passwords** as you progress through the levels.




## 📃 Step-by-Step Solution



### Step 1: Connect to the Bandit Server


Start by connecting to the Bandit server using SSH with the Bandit17 username and the password from the previous level.

:white_check_mark: **Run the command: ssh bandit17@bandit.labs.overthewire.org -p 2220**

When prompted, enter the password you retrieved from the previous level.



### Step 2: List the Files in the Home Directory


After logging in, check the contents of the home directory to confirm the presence of the files **passwords.old** and **passwords.new**.

:white_check_mark: **Run the command: ls**

You’ll see the two files: **passwords.old and passwords.new.**



### Step 3: Compare the Files


Use the diff command to compare the two files and locate the changed line.


:white_check_mark: **Run the command: diff passwords.old passwords.new**


**Explanation**:

**diff**: Compares two files line by line and highlights differences.

**passwords.old passwords.new**: Specifies the files to compare.


The output will show the line that is different in passwords.new. This line contains the password for Bandit18.


### Step 4: Note the Password for Bandit18


Copy the password from the output of the diff command for use in the next level.


🔑 Password for Level 18: **x2gLTTjFwMOhQ8oWNbMN362QKxfRqGlO**



### Step 5: Log Out


After retrieving the password, end your session by logging out.

:white_check_mark: **Run the command: exit**



### :round_pushpin: Key Commands Recap


:one: **SSH** : Connect to the Bandit server.

:two: **ls** : List the files in the directory to locate the target files.

:three: **diff passwords.old passwords.new** : Identify the difference between the two files.

:four: **exit** : Log out from the Bandit server.




### 🔎 Thought Process


:arrow_right: This level teaches you how to use the diff command to compare files and identify changes. 

:arrow_right: This skill is commonly used in software development and system administration for tasks like code reviews, configuration management, and troubleshooting.