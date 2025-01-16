# 🎲 Bandit Level 13 → Level 14


## 🔊 Level Objective



The password for the next level is stored in the file **/etc/bandit_pass/bandit14** and can only be read by the **bandit14** user. Instead of providing the password directly, you are given a **private SSH key** to log into the bandit14 user account.



### ✏️ Commands You’ll Need


:asterisk: **SSH**: Securely connect to the Bandit server or another user account.

:asterisk: **cat**: View the contents of a file.

:asterisk: **exit**: Log out from the server.



💡 **Reminder**: Always write down the **passwords** as you progress through the levels.




## 📃 Step-by-Step Solution


### Step 1: Connect to the Bandit Server

Start by connecting to the Bandit server using **SSH** with the Bandit13 username and the password from the previous level.


:white_check_mark: **Run the command: ssh bandit13@bandit.labs.overthewire.org -p 2220**

When prompted, enter the password you retrieved from the previous level.



### Step 2: Locate the Private SSH Key


After logging in, you will find a private SSH key file in the home directory.

:white_check_mark: **Run the command: ls**

**Expected Output**: A file named **sshkey.private** will be listed.


### Step 3: Use the Private SSH Key to Log into Bandit14


The **private key** allows you to log in as the bandit14 user without needing a password.

:white_check_mark: **Run the command: ssh -i sshkey.private bandit14@localhost**


**Explanation**: 

**ssh**: Command to establish an SSH connection.

**-i sshkey.private**: Specifies the private key file to use for authentication.

**bandit14@localhost**: Logs into the user bandit14 on the local machine (localhost).



### Step 4: Read the Password File


Once logged in as bandit14, read the password stored in **/etc/bandit_pass/bandit14.**

:white_check_mark: **Run the command: cat /etc/bandit_pass/bandit14**


**Expected Output**: The password for Bandit14 will be displayed.



🔑 Password for Level 14: **MU4VWeTyJk8ROof1qqmcBPaLh7lDCPvS**




## Step 5: Log Out
After retrieving the password, log out from the bandit14 account and then from the Bandit server.

:white_check_mark: **Run the command** (to log out from bandit14): **exit**


:white_check_mark: **Run the command** (to log out from bandit13): **exit**



### :round_pushpin: Key Commands Recap

:one: **SSH**: Connect to the Bandit server or another user account.

:two: **ls**: Locate the private SSH key in the home directory.

:three: **ssh -i**: Use the private key to log into another user account.

:four: **cat**: Read the contents of the password file.

:five: **exit**: Log out from the server.






### 🔎 Thought Process

:arrow_right: This level demonstrates the use of private SSH keys for authentication, an important concept in securing remote connections.


:arrow_right: Using -i to specify a private key is common when password-based login is disabled or unavailable.


:arrow_right: Understanding how to navigate between user accounts and access files with proper permissions is essential for system administration and cybersecurity tasks.