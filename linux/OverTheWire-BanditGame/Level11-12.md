🎲 Bandit Level 11 → Level 12
🔊 Level Objective
The password for the next level is stored in a file named data.txt. In this file, all lowercase (a-z) and uppercase (A-Z) letters have been rotated by 13 positions (ROT13). Your task is to decode the text to retrieve the password.

✏️ Commands You’ll Need
cat: View the contents of a file.
tr: Translate or replace characters in a file.
exit: Log out from the server.

💡 Reminder: Always write down the passwords as you progress through the levels.

📃 Step-by-Step Solution
Step 1: Connect to the Bandit Server
Start by connecting to the Bandit server using SSH with the Bandit11 username and the password from the previous level.

Run the command:

bash
Copy code
ssh bandit11@bandit.labs.overthewire.org -p 2220
When prompted, enter the password you retrieved from Level 10.

Step 2: View the Contents of data.txt
After logging in, locate and view the content of data.txt to analyze the file.

Run the command:

bash
Copy code
cat data.txt
Expected Output:
The file will contain scrambled text encoded with the ROT13 cipher.

Step 3: Decode the Text Using tr
To decode the text, use the tr command to perform ROT13 transformation. ROT13 shifts letters by 13 positions in the alphabet, so a becomes n, b becomes o, and so on.

Run the command:

bash
Copy code
cat data.txt | tr 'A-Za-z' 'N-ZA-Mn-za-m'
Explanation:

cat data.txt: Displays the content of the file.
tr 'A-Za-z' 'N-ZA-Mn-za-m': Translates each letter using ROT13.
'A-Za-z': Specifies all uppercase (A-Z) and lowercase (a-z) letters.
'N-ZA-Mn-za-m': Maps each letter to its ROT13 equivalent.
Expected Output:
The decoded text will display the password for Level 12.

Step 4: Log Out
After retrieving the password, log out from the server.

Run the command:

bash
Copy code
exit
:round_pushpin: Key Commands Recap
:one: cat: View the contents of the file.
:two: tr 'A-Za-z' 'N-ZA-Mn-za-m': Decode text using the ROT13 cipher.
:three: exit: Log out from the Bandit server.

🔑 Password for Level 12: (Copy the decoded text output for future use.)

🔎 Thought Process
This level introduces the concept of text encoding and decoding, specifically the ROT13 cipher.

The tr command is a simple and efficient tool for text transformations, making it ideal for this task.
ROT13 is commonly used in puzzles or obfuscation, and understanding it helps with basic cryptography challenges.
Decoding files like this is a common task in security challenges and system scripts.





