#!/bin/bash

Set -u

# Set -u forces a bash script to stop if it see any unrecongised variables

X=10
Y=20
Z=$((X + Y + W))
echo "Z equals: $Z"


# W variable hasn't been identified as a variable which should stop the script