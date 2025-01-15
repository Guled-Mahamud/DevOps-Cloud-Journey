🎲 Bandit Level 18 → Level 19
🔊 Level Objective
The password for the next level is stored in a file named readme in the home directory. However, the challenge is that logging in with SSH causes the system to immediately log you out due to a modified .bashrc file.

✏️ Commands You’ll Need
ssh: Connect to the server.
cat: View the contents of a file.
exit: Log out from the server.
ssh with commands: Execute commands remotely during SSH login.
💡 Reminder: Always write down the passwords as you progress through the levels.

📃 Step-by-Step Solution
Step 1: Understand the Issue
When you attempt to log in using:

bash
Copy code
ssh bandit18@bandit.labs.overthewire.org -p 2220
The .bashrc file runs automatically, forcing an immediate logout. This prevents you from interacting with the terminal.

Step 2: Bypass the .bashrc Execution
To bypass the .bashrc script, you can instruct SSH to run a specific command instead of opening an interactive shell. This prevents .bashrc from executing.

Run the command:

bash
Copy code
ssh bandit18@bandit.labs.overthewire.org -p 2220 cat readme
Explanation:

ssh bandit18@bandit.labs.overthewire.org -p 2220: Connect to the Bandit18 server.
cat readme: Instead of starting an interactive shell, the SSH session immediately runs the cat readme command to display the content of the readme file.
Expected Output: The password for Level 19 will be displayed in the terminal.

Step 3: Log Out
Once you retrieve the password, log out or simply close your terminal session. No additional action is needed since the cat command ends the session automatically.

:round_pushpin: Key Commands Recap
:one: ssh with command: Bypasses the .bashrc execution by directly running a command.
:two: cat readme: Reads the contents of the file containing the password.

🔑 Password for Level 19: (Copy the output from the command for future use.)

🔎 Thought Process
This level demonstrates how to handle situations where startup scripts (like .bashrc) interfere with normal login. By using SSH with a command:

You bypass the shell startup sequence.
Directly access the target resource (in this case, the readme file).
This approach is practical for troubleshooting remote servers with problematic configurations or scripts.