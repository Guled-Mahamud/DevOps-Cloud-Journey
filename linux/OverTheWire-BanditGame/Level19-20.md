# 🎲 Bandit Level 19 → Level 20


## 🔊 Level Objective


There is a setuid binary in the home directory that connects to localhost on a port you specify as a **command-line argument**. It reads a line of text from the connection and compares it to the **password** for the current level (bandit20). If the **password** is correct, it transmits the **password** for the next level (bandit21).




### ✏️ Commands You’ll Need


:asterisk: **ls**: List files in a directory.

:asterisk: **chmod**: Change file permissions.

:asterisk: **nc (Netcat)**: Create a listening server.

:asterisk: **./[binary_name]**: Execute the setuid binary.

:asterisk: **exit**: Log out from the server.




💡 **Reminder**: Always write down the **passwords** as you progress through the levels.




## 📃 Step-by-Step Solution


### Step 1: Connect to the Bandit Server


Log in to the Bandit server using SSH with the Bandit19 username and the password from Level 18.

:white_check_mark: **Run the command: ssh bandit19@bandit.labs.overthewire.org -p 2220**

When prompted, enter the password you retrieved from the previous level.



### Step 2: Locate the Setuid Binary


Once connected, list the files in the home directory to find the setuid binary.

:white_check_mark: **Run the command: ls**


**Expected Output**: You should see a file, likely named something like **bandit20-do**.



### Step 3: Understand the Binary

The binary requires a port number as an argument. It connects to the specified port on localhost, reads input, and compares it to the current password. To retrieve the next password, you need to:

- Start a server listening on a chosen port.


- Provide the current password when the binary connects.


### Step 4: Start a Listening Server


Use **Netcat (nc)** to start a server that listens on a port of your choice (e.g., 12345).


:white_check_mark: **Run the command: nc -l -p 12345**


**Explanation**:

**nc** : Starts Netcat.

**-l** : Enables listening mode.

**-p 12345**: Specifies the port to listen on (you can use any unused port).



### Step 5: Execute the Binary


In a second terminal, connect to the same server and execute the setuid binary, specifying the port you chose.


:white_check_mark: **Run the command: ./bandit20-do 12345**


**Explanation**:

**./bandit20-do** : Executes the binary.

**12345** : Specifies the port to connect to (the one your server is listening on).


### Step 6: Provide the Current Password


When the binary connects to the server **(via Netcat)**, it waits for input. Provide the password for Level 19 (current level).


**In the Netcat terminal, type: csharp**


**[**cGWpMaKXVwDUNgPAVJbWYuGHVn9zl3j8**]

Press Enter after typing the password.


**Expected Output**:

If the password is correct, the binary sends back the password for Level 20 (bandit21).

🔑 Password for Level 20: **0qXahG8ZjOVMN9Ghs7iOWsCfZyXOUbYO**



### Step 7: Log Out

After retrieving the password, log out from the server.

:white_check_mark: **Run the command: exit**



### :round_pushpin: Key Commands Recap


:one: **ls**: Identify the setuid binary.

:two: **nc -l -p [port]**: Start a listening server on the specified port.

:three: **./[binary_name] [port]**: Run the binary, connecting it to the listening server.

:four: **Provide the current password**: Enter the Level 19 password when prompted.




### 🔎 Thought Process


**This level tests your understanding of**:

:arrow_right: Inter-process communication: The binary connects to a local server (your Netcat instance).

:arrow_right: Setuid binaries: These run with elevated permissions, allowing you to retrieve sensitive information.

:arrow_right: Networking basics: Setting up and managing local servers and connections.

:arrow_right:By combining these tools and concepts, you can simulate a networked interaction and retrieve the next password effectively.






