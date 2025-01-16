# 🎲 Bandit Level 7 → Level 8



## 🔊 Level Objective


The password for the next level is stored in a file named data.txt. It is located next to the word millionth. Your task is to locate and retrieve this password.



### ✏️ Commands You’ll Need


:white_check_mark: **cat**: View the contents of a file.

:white_check_mark: **grep**: Search for a specific word or pattern in a file.

:white_check_mark:**exit**: Log out from the server.



💡 **Reminder**: Always write down the **passwords** as you progress through the levels.




## 📃 Step-by-Step Solution


### Step 1: Connect to the Bandit Server


Start by connecting to the Bandit server using **SSH** with the **Bandit7** username and the password from the previous level.


:white_check_mark: **Run the command: ssh bandit7@bandit.labs.overthewire.org -p 2220**

When prompted, enter the password you retrieved from the previous level.



### Step 2: Locate the Word "millionth" in data.txt

Use the **grep** command to search for the word **millionth** in the file data.txt.

:white_check_mark: **Run the command: grep "millionth" data.txt**

**Explanation**: 

- **grep "millionth" data.txt**: Searches for the word millionth in the file data.txt and displays the line where it is found.


**Expected Output**: The output will display a line that contains the word millionth and the password for the next level, like this:

**millionth**      **dfwvzFQi4mU0wfNbFOe9RoWskMLg7eEc**


**Step 3**: **Log Out**

After retrieving the password, log out from the server.

:white_check_mark: **Run the command: exit**


🔑 Password for Level 8: dfwvzFQi4mU0wfNbFOe9RoWskMLg7eEc




### :round_pushpin: Key Commands Recap


:one: **grep "millionth" data.txt**: Searches for and displays the line containing the word millionth.

:two: **exit**: Logs out from the Bandit server.






### 🔎 Thought Process


:arrow_right: This level demonstrates the power of grep, a command-line tool for text searching:


:arrow_right: grep is invaluable for quickly locating specific words or patterns in files, especially in large datasets.


:arrow_right: Combining grep with well-defined patterns enables efficient retrieval of relevant information.