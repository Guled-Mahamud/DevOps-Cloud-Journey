# 🎲 Bandit Level 14 → Level 15


## 🔊 Level Objective


The goal is to retrieve the password for Bandit15 by submitting the current level's password (Bandit14) to port **30000 on localhost**.



### ✏️ Commands You’ll Need


:asterisk: **SSH**: Securely connect to the Bandit server.

:asterisk: **nc (Netcat)**: Send data to a specific port and receive responses.

:asterisk: **exit**: Log out from the server.




💡 **Reminder**: Always write down the **passwords** as you progress through the levels.




## 📃 Step-by-Step Solution


### Step 1: Connect to the Bandit Server

Start by connecting to the Bandit server using SSH with the Bandit14 username and the password from the previous level.

:white_check_mark: ""Run the command: ssh bandit14@bandit.labs.overthewire.org -p 2220""


When prompted, enter the password you retrieved from the previous level.



### Step 2: Connect to Port 30000


Use the **nc (Netcat)** command to connect to port **30000 on localhost**.


:white_check_mark: **Run the command: nc localhost 30000**


**Explanation:**

**nc:** A versatile tool for reading from and writing to network connections.

**localhost:** Refers to the local machine (the Bandit server in this case).

**30000:** The port to which you are connecting.



### Step 3: Submit the Password

After connecting to the port, paste the password for Bandit14 and press Enter.


**Expected Output**: The server will respond with the password for Bandit15.



### Step 4: Log Out

After retrieving the password, end your session by logging out.

:white_check_mark: **Run the command: exit**




### :round_pushpin: Key Commands Recap


:one: **SSH:** Connect to the Bandit server.

:two: **nc (Netcat):** Establish a connection to a specified port and send data.

:three: **exit:** Log out from the Bandit server.



🔑 Password for Level 15: **8xCjnmgoKbGLhHFAZlGE5Tmu4M2tKJQo**



### 🔎 Thought Process



:arrow_right: This level teaches you how to interact with services running on specific ports.

:arrow_right: Netcat (nc) is a lightweight and powerful tool for creating and troubleshooting network connections.

:arrow_right:Understanding how to send and receive data over network ports is essential for system administration and network security tasks.