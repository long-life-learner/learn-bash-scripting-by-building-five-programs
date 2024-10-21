#!/bin/bash

# Copy the .bashrc file to the home directory
cp /workspace/project/freeCodeCamp/.bashrc ~/.bashrc

# Ensure the /workspace directory exists, create it if it doesn't
mkdir -p /workspace

# Create the .bash_history file in the workspace directory
touch /workspace/.bash_history

# Grant read, write, and execute permissions to all users (777) for the .bash_history file
# On Windows, chmod might not have the same effect as on Linux, but it's safe to include for Git Bash
chmod 777 /workspace/.bash_history
