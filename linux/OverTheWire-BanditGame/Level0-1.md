# :game_die: Bandit Level 0 → Level 1

## :loud_sound: Level Objective


Your task in this level is to log into the Bandit server, locate the **readme file** in the **home directory**, and retrieve the password for the next level **Bandit1**.



:pencil2: **Please beware of the following commands**

**SSH**: SSH stands for Secure Shell. It is a protocol used to securely connect to a remote machine (another computer) over a network. This is how you’ll be accessing the Bandit server to complete the level. SSH ensures your data is encrypted, keeping your connection safe.

**Bandit**: This is the username for the Bandit Level. You need to log in using this username, which is provided to you in the game.

**Bandit.labs.overthewire.org**: This is the address of the Bandit server. It’s like the "home" or location of the server where you need to connect. In this case, it’s hosted by .

**-p 2220**: The -p option specifies the port number. SSH normally works on port 22, but Bandit uses port 2220 instead. You need to specify this port so your connection knows where to go.




:bulb: **Reminder** - please note down the **Passwords** for each level as you go along






##  :page_with_curl: Step-by-Step Solution


Once logged in, you will be in the **home directory** of bandit0.



### Step 1: List the Files in the Home Directory

**Objective**: After logging in, your goal is to see which files are available in your current directory (home directory).

**Why This Step is Important**: Bandit Level 0 contains a file named readme, which holds the password for the next level. You need to locate it.

**How to Do It**:

To list the files in your home directory, use the **ls** command.


**Explanation**:

ls: This is the command used to list files and directories in your current working directory.


### Step 2: Read the Contents of the readme File

**Objective**: Open and view the contents of the readme file to find the password for the next level.

**Why This Step is Important**: The password for the next level is stored inside the readme file. You need to read it to continue to the next step in the game.

**How to Do It**:

Use the **cat** command to display the contents of the file. 

**Explanation**:

**cat**: This command is used to display the contents of a file. It stands for "concatenate" and is commonly used to view text files in Linux.


**Expected Outcome**: The content of the readme file will be shown, which is the password for the next level. For Level 1, the password will be displayed directly in the terminal.

### Step 3: Log Out 

**Objective**: After obtaining the password, it's a good practice to log out of the server and end your session.

**Why This Step is Important**: Logging out is a good habit in any system, ensuring that no one else can access your session.

**How to Do It**:

Simply use the **exit** command to log out from the server.
Run:


**Explanation**:

**exit**: This command closes your current terminal session. It’s used to log out from a remote server or close the terminal.

**Expected Outcome**: You will be logged out from the Bandit server, and you can now proceed to the next level.



### :mag_right: Thought Process:

The solution involves basic Linux commands, which are essential for interacting with remote servers. SSH, ls, cat, and exit are foundational tools that you'll use often in DevOps and cloud environments.

**Why these commands matter**:

SSH is the primary method for logging into remote servers.

ls helps you view the contents of directories, which is essential for locating files.

cat allows you to read the contents of files, which is how you retrieve important information (like passwords).

exit helps you log out properly after completing your task.

**By completing these steps, you are learning to navigate and manage files in a Linux environment—skills that are crucial for a DevOps/Cloud Engineer role.**






