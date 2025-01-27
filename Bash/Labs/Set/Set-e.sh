#!/bin/bash

set -e 

echo "Before the script"

nonexistentcommand   # Set -e will make the script stop here at the error and will not print anyting after.

echo "After the script"

# Use the command Set -e helps catch error as soon it happens and stops the script
