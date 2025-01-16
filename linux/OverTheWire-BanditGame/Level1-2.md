# 🎲 Bandit Level 1 → Level 2



## 🔊 Level Objective
Your task in this level is to locate a file named - in the home directory of the **Bandit1** user. This file contains the password for the next level, Bandit2.



### ✏️ Commands You’ll Need

:asterisk:**SSH**: Securely connect to the Bandit server.

:asterisk:**ls**: List files in a directory.

:asterisk:**cat**: View the contents of a file.

:asterisk:**exit**: Log out from the server.



💡 **Reminder**: Always note down the **passwords** as you progress through the levels.




## 📃 Step-by-Step Solution


### Step 1: Connect to the Bandit Server

To start, connect to the Bandit server using SSH with the Bandit1 username and the password from the previous level.

:white_check_mark:**Run the command: ssh bandit1@bandit.labs.overthewire.org -p 2220**


When prompted, enter the password you retrieved from previous level



### Step 2: List Files in the Directory


After logging in, check the files in the home directory to locate the file named -.

:white_check_mark:**Run the command: ls**


- **ls**: Lists all files in the current directory. You should see a file named -.



### Step 3: Read the Contents of the File Named -


Files with special names like - can cause confusion because - is often treated as a command option. To handle this, use a workaround to specify the file explicitly.

:white_check_mark:**Run the command: cat ./-**


- **cat**: Reads and displays the contents of a file.

- **./-**: The **./** tells the system to treat - as a file in the current directory, not as a command option.

The output will display the password for Level 2.





### Step 4: Log Out

Once you have the password, log out of the server to end your session.



🔑 Password for Level 2: **ZjLjTmM6FvvyRnrb2rfNWOZOTa6ip5If**




### :round_pushpin:Key Commands Recap

:one:**SSH**: Connect to the server securely.

:two:**ls**: List files in the directory to locate the target file.

:three:**cat** ./-: Read a file with a tricky name like -.






🔎 **Thought Process**

:arrow_right:This level introduces a common challenge: dealing with files that have unusual names. By using **./**, you ensure the file is treated properly.


:arrow_right:These basic Linux commands **—ls**, **cat**, and **exit** are foundational skills for working in terminal environments and solving future levels.







