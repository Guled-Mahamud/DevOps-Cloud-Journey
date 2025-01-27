#!/bin/bash

set -x

# The set -x prints each commands before it gets excusted to the terminal to help the flow of the script

echo "Starting the script."
X=10
Y=20
Z=$((X + Y))

echo "The value of X is: $Z"


# Set +X command helps if you only want to debug a part of the script

# so add set +x at the end to stop the debugging and continue the script as normal