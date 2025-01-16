# 🎲 Bandit Level 15 → Level 16


## 🔊 Level Objective


The goal is to retrieve the password for Bandit16 by submitting the password for the current level (Bandit15) to port **30001 on localhost**. The communication must use **SSL/TLS encryption**.



### ✏️ Commands You’ll Need


:asterisk: **SSH**: Securely connect to the Bandit server.

:asterisk: **openssl s_client**: Establish an SSL/TLS connection and send the password.

:asterisk: **exit**: Log out from the server.




💡 **Reminder**: Always write down the **passwords** as you progress through the levels.



## 📃 Step-by-Step Solution


### Step 1: Connect to the Bandit Server


Start by connecting to the Bandit server using SSH with the Bandit15 username and the password from the previous level.


:white_check_mark: **Run the command: ssh bandit15@bandit.labs.overthewire.org -p 2220**

When prompted, enter the password you retrieved from the previous level.



### Step 2: Use OpenSSL to Connect to Port 30001


Connect to the server on port 30001 using the openssl s_client command to establish an SSL/TLS connection.


:white_check_mark: **Run the command: openssl s_client -connect localhost:30001**



- **openssl s_client**: A tool used to interact with SSL/TLS-enabled services.

- **-connect localhost:30001**: Specifies the host (localhost) and port (30001) to connect to using SSL/TLS.



### Step 3: Submit the Password

After successfully connecting to the server, paste the password for Bandit15 and press Enter.


If the connection is successful, you will see SSL/TLS handshake information followed by a prompt to send input.



### Step 4: Retrieve the Password for the Next Level


The server will respond with the password for Bandit16. Copy this password for use in the next level.


🔑 Password for Level 16: **kSkvUpMQ7lBYyCM4GBPvCvT1BfWRy0Dx**



### Step 5: Log Out


After retrieving the password, log out from the Bandit server.

:white_check_mark: **Run the command: exit**




### :round_pushpin: Key Commands Recap


:one: **SSH**: Connect to the Bandit server.

:two: **openssl s_client**: Establish an SSL/TLS connection to the server.

:three: **exit**: Log out from the Bandit server.




### 🔎 Thought Process


:arrow_right: This level introduces SSL/TLS encryption and shows how to interact with encrypted services.


:arrow_right: openssl s_client is a vital tool for establishing secure connections, often used in testing and troubleshooting SSL/TLS configurations.


:arrow_right: Understanding how to securely send and receive data is essential for network security and system administration.
