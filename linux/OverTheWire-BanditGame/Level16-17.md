# 🎲 Bandit Level 16 → Level 17


## 🔊 Level Objective

The goal is to retrieve the credentials for Bandit17. The password for the next level can be obtained by submitting the current level's password to a server running on **localhost** (your local machine). This server is listening on a port in the **range 31000–32000**. Your task is to:


- Find which ports have a server listening.

- Identify which of these servers use **SSL/TLS**.

- Submit the current level's password to the correct server to retrieve the credentials for Bandit17.



### ✏️ Commands You’ll Need

:asterisk: **SSH**: Securely connect to the Bandit server.

:asterisk: **nmap**: Scan ports to identify active servers.

:asterisk: **openssl s_client**: Check for SSL/TLS on a port and securely communicate with the server.

:asterisk: **exit**: Log out from the server.




💡 **Reminder**: Always write down the **passwords** as you progress through the levels.



## 📃 Step-by-Step Solution



### Step 1: Connect to the Bandit Server


Connect to the Bandit server using SSH with the Bandit16 username and the password from the previous level.

:white_check_mark: **Run the command: ssh bandit16@bandit.labs.overthewire.org -p 2220**


When prompted, enter the password you retrieved from the previous level.



### Step 2: Scan for Open Ports


Use the **nmap** command to scan for open ports in the **range 31000–32000** on localhost.

:white_check_mark: **Run the command: nmap -p 31000-32000 localhost**


**Explanation**:

**nmap**: Scans the network to discover open ports.

**-p 31000-32000**: Specifies the range of ports to scan.

**localhost**: Refers to the local machine (the Bandit server).


The output will list the ports that have servers listening.



### Step 3: Test Ports for SSL/TLS Support


For each open port, use the **openssl s_client** command to check if the server supports **SSL/TLS**.


:white_check_mark: **Run the command**: openssl s_client -connect localhost:<port>
Replace <port> with the port number from the previous step


**Explanation**:


**openssl s_client**: A tool to test SSL/TLS connections.

**-connect localhost**:<port>: Attempts to connect to the specified port using SSL/TLS.

If the server supports **SSL/TLS**, you will see **SSL handshake** information in the output. Otherwise, the connection will fail.


### Step 4: Submit the Password

Once you identify the server that supports **SSL/TLS**, connect to it and submit the current level's password.


:white_check_mark: **Run the command: openssl s_client -connect localhost:<correct_port>**


After connecting, paste the password for Bandit16 and press Enter.



### Step 5: Retrieve the Credentials

The correct server will respond with the credentials for Bandit17. Copy the password for use in the next level.


🔑 Password for Level 17: **EReVavePLFHtFlFsjn3hyzMlvSuSAcRD**



### Step 6: Log Out
After retrieving the password, log out from the Bandit server.



:white_check_mark: **Run the command: exit**





### :round_pushpin: Key Commands Recap


:one: **SSH** : Connect to the Bandit server.

:two: **nmap** : Locate active servers by scanning for open ports.

:three: **openssl s_client** : Check for SSL/TLS and securely send data to the server.

:four: **exit** : Log out from the Bandit server.





### 🔎 Thought Process


:arrow_right: This level emphasizes network troubleshooting and security techniques:

:arrow_right: nmap identifies active services.

:arrow_right: openssl s_client tests for SSL/TLS and securely communicates with servers.

:arrow_right: These are fundamental tools in system administration and cybersecurity, helping you navigate secure server communications efficiently.