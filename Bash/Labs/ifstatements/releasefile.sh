#!/bin/bash

release_file=/etc/os-release

if [ -d /etc/pacman.d ]
then 
 # The host is based on Arch, run the packman update command
  sudo pacman -syu

fi

if [ -d /etc/apt ]
then

  # The host is based on the debian or ubuntu,
  # Run the apt version of the command
  sudo apt update
  sudo apt dist-upgrade

fi 