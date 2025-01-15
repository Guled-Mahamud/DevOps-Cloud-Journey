🎲 Bandit Level 10 → Level 11
🔊 Level Objective
The password for the next level is stored in a file named data.txt. This file contains data encoded in Base64 format. Your task is to decode the data to retrieve the password.

✏️ Commands You’ll Need
cat: View the contents of a file.
base64 -d: Decode Base64-encoded data.
exit: Log out from the server.

💡 Reminder: Always write down the passwords as you progress through the levels.

📃 Step-by-Step Solution
Step 1: Connect to the Bandit Server
Start by connecting to the Bandit server using SSH with the Bandit10 username and the password from the previous level.

Run the command:

bash
Copy code
ssh bandit10@bandit.labs.overthewire.org -p 2220
When prompted, enter the password you retrieved from Level 9.

Step 2: View the Contents of data.txt
After logging in, locate and view the content of data.txt to analyze the file.

Run the command:

bash
Copy code
cat data.txt
Expected Output:
The file will display a long string of Base64-encoded text.

Step 3: Decode the Base64 Data
To decode the Base64-encoded text, use the base64 command with the -d (decode) option.

Run the command:

bash
Copy code
cat data.txt | base64 -d
Explanation:

cat data.txt: Displays the content of the file.
|: Pipes the output of cat as input to the next command.
base64 -d: Decodes the Base64-encoded data.
Expected Output:
The decoded text will display the password for Level 11.

Step 4: Log Out
After retrieving the password, log out from the server.

Run the command:

bash
Copy code
exit
:round_pushpin: Key Commands Recap
:one: cat: View the contents of the file.
:two: base64 -d: Decode Base64-encoded data.
:three: exit: Log out from the Bandit server.

🔑 Password for Level 11: (Copy the decoded text output for future use.)

🔎 Thought Process
This level introduces Base64 encoding, a common method for encoding binary data into text.

The base64 command is a powerful tool for both encoding and decoding data.
Understanding Base64 is essential for handling encoded data in various programming and cybersecurity tasks.
Combining commands with pipes (|) simplifies workflows and allows seamless data processing.