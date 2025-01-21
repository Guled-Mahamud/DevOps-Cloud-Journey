# Bash Scripting  :books:

Bash scripting is a way to write a series of commands in a file and then run them all at once. It’s like creating a list of tasks for your computer and saying, **“Do this, then this, then that.”**


If you’ve ever typed commands into the terminal, you’re already halfway there. Bash scripting lets you save those commands into a file so you don’t have to type them every time.


## Why Learn Bash Scripting?

- **Save time**: Automate repetitive tasks.

- **Be more efficient**: Run multiple commands with just one script.

- **Solve problems**: Create tools or scripts to handle specific tasks.


## Basics of Bash Scripting:

### :one: start with a Shebang:

Every script starts with #!/bin/bash. This tells the system to use Bash to run the script.


**#!/bin/bash**

**echo "Hello, World!"**



### :two: Run a Script:

Save your script (e.g., **myscript.sh**), make it executable with **chmod +x myscript.sh**, and run it with **./myscript.sh**.


### :three: Use Variables:

Variables store data you can reuse.


**#!/bin/bash**

**name="Alice"**

**echo "Hello, $name!"**


### :four: Add Logic:

Use if statements to make decisions.


**#!/bin/bash**

if **[ "$1" == "Alice" ]**; then

    echo "Welcome back, Alice!"

else

    echo "Hello, stranger!"
fi

(The **$1** is the first argument you pass to the script.)


## Why It’s Useful:

Bash scripting is used for system administration, automating tasks, managing servers, and more. It’s a must-have skill for anyone working with Linux or in tech roles like DevOps.


