🎲 Bandit Level 7 → Level 8
🔊 Level Objective
The password for the next level is stored in a file named data.txt. It is located next to the word millionth. Your task is to locate and retrieve this password.

✏️ Commands You’ll Need
cat: View the contents of a file.
grep: Search for a specific word or pattern in a file.
exit: Log out from the server.

💡 Reminder: Always write down the passwords as you progress through the levels.

📃 Step-by-Step Solution
Step 1: Connect to the Bandit Server
Start by connecting to the Bandit server using SSH with the Bandit7 username and the password from the previous level.

Run the command:

bash
Copy code
ssh bandit7@bandit.labs.overthewire.org -p 2220
When prompted, enter the password you retrieved from Level 6.

Step 2: Locate the Word "millionth" in data.txt
Use the grep command to search for the word millionth in the file data.txt.

Run the command:

bash
Copy code
grep "millionth" data.txt
Explanation:

grep "millionth" data.txt: Searches for the word millionth in the file data.txt and displays the line where it is found.
Expected Output:
The output will display a line that contains the word millionth and the password for the next level, like this:

text
Copy code
millionth      [password]
Step 3: Identify and Note the Password
From the output, locate the password next to the word millionth. Copy it for use in the next level.

Step 4: Log Out
After retrieving the password, log out from the server.

Run the command:

bash
Copy code
exit
:round_pushpin: Key Commands Recap
:one: grep "millionth" data.txt: Searches for and displays the line containing the word millionth.
:two: exit: Logs out from the Bandit server.

🔑 Password for Level 8: (Copy the password from the line containing the word millionth for future use.)

🔎 Thought Process
This level demonstrates the power of grep, a command-line tool for text searching:

grep is invaluable for quickly locating specific words or patterns in files, especially in large datasets.
Combining grep with well-defined patterns enables efficient retrieval of relevant information.