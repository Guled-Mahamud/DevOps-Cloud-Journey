🎲 Bandit Level 8 → Level 9
🔊 Level Objective
The password for the next level is stored in a file named data.txt. The password is the only line of text that occurs only once in the file. Your task is to locate and retrieve this unique line.

✏️ Commands You’ll Need
cat: View the contents of a file.
sort: Arrange the lines in a file in sorted order.
uniq -u: Display only the unique lines from sorted input.
exit: Log out from the server.

💡 Reminder: Always write down the passwords as you progress through the levels.

📃 Step-by-Step Solution
Step 1: Connect to the Bandit Server
Start by connecting to the Bandit server using SSH with the Bandit8 username and the password from the previous level.

Run the command:

bash
Copy code
ssh bandit8@bandit.labs.overthewire.org -p 2220
When prompted, enter the password you retrieved from Level 7.

Step 2: View the Contents of data.txt
After logging in, inspect the content of the file data.txt to understand its structure.

Run the command:

bash
Copy code
cat data.txt
Expected Outcome:
You will see multiple lines of text, with most lines repeating except for one unique line.

Step 3: Sort the Lines in data.txt
To identify the unique line, start by sorting the lines in the file.

Run the command:

bash
Copy code
sort data.txt
Explanation:

sort data.txt: Arranges the lines in alphabetical order, grouping identical lines together.
Step 4: Find the Unique Line
After sorting the file, use the uniq -u command to filter out the lines that occur only once.

Run the command:

bash
Copy code
sort data.txt | uniq -u
Explanation:

sort data.txt: Groups identical lines together.
|: Pipes the sorted output into the next command.
uniq -u: Displays only the lines that occur once in the input.
Expected Output:
The unique line will be displayed, which is the password for Level 9.

Step 5: Log Out
After retrieving the password, log out from the server.

Run the command:

bash
Copy code
exit
:round_pushpin: Key Commands Recap
:one: sort: Arrange lines in alphabetical order to group duplicates together.
:two: uniq -u: Filter out the lines that appear only once.
:three: exit: Log out from the Bandit server.

🔑 Password for Level 9: (Copy the unique line output for future use.)

🔎 Thought Process
This level highlights how to handle files with repetitive content to identify unique entries:

sort is an essential tool for organizing data, grouping identical items together.
uniq -u is a straightforward way to isolate unique lines from sorted data.
Combining these commands with pipes (|) allows for efficient and flexible text processing.