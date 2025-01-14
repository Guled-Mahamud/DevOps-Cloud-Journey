# :game_die: Bandit Level 0 → Level 1



## :loud_sound: Level Objective


Your task in this level is to log into the Bandit server, locate the **readme file** in the **home directory**, and retrieve the password for the next level **Bandit1**.




:pencil2: **Please beware of the following commands**

**SSH**: A protocol to securely connect to another computer.

**Bandit**: Username for the game.

**Bandit.labs.overthewire.org**: Address of the Bandit server.

**-p 2220**: Specifies the custom port used for the connection.





:bulb: **Reminder** - please note down the **Passwords** for each level as you go along






##  :page_with_curl: Step-by-Step Solution


Once logged in, you will be in the **home directory** of bandit0.



### Step 1: List the Files in the Home Directory

**Objective**: After logging in, your goal is to see which files are available in your current directory (home directory).

**Why This Step is Important**: Bandit Level 0 contains a file named readme, which holds the password for the next level. You need to locate it.

**How to Do It**:

Run the command **ls**


**Explanation**:

**ls**: This is the command used to list files and directories in your current working directory.


### Step 2: Read the Contents of the readme File

**Objective**: Open and view the contents of the readme file to find the password for the next level.

**Why This Step is Important**: The password for the next level is stored inside the readme file. You need to read it to continue to the next step in the game.

**How to Do It**:

Run the command **cat**

**Explanation**:

**cat**: This command is used to display the contents of a file. It stands for "concatenate" and is commonly used to view text files in Linux.


**Expected Outcome**: The content of the readme file will be shown, which is the password for the next level. For Level 1, the password will be displayed directly in the terminal.

### Step 3: Log Out 

**Objective**: After obtaining the password, it's a good practice to log out of the server and end your session.

**Why This Step is Important**: Logging out is a good habit in any system, ensuring that no one else can access your session.

**How to Do It**:

Run the command **exit**



**Explanation**:

**exit**: This command closes your current terminal session. It’s used to log out from a remote server or close the terminal.

**Expected Outcome**: You will be logged out from the Bandit server, and you can now proceed to the next level.




### Key commands for the password


**ls**: List the files in your current directory.

**cat**: View the contents of a file.


**Password** :key: ZjLjTmM6FvvyRnrb2rfNWOZOTa6ip5If






### :mag_right: Thought Process:

The solution involves basic Linux commands, which are essential for interacting with remote servers. SSH, ls, cat, and exit are foundational tools that you'll use often in DevOps and cloud environments.

**Why these commands matter**:

**SSH** is the primary method for logging into remote servers.

**ls** helps you view the contents of directories, which is essential for locating files.

**cat** allows you to read the contents of files, which is how you retrieve important information (like passwords).

*exit** helps you log out properly after completing your task.









