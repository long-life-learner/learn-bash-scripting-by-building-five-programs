# ~/.bashrc: executed by bash(1) for non-login shells.
# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
# for examples

# If not running interactively, don't do anything
case $- in
    *i*) ;;
      *) return;;
esac

# Append to the history file, don't overwrite it
shopt -s histappend

# History settings
HISTSIZE=1000
HISTFILESIZE=2000

# Check the window size after each command and update LINES and COLUMNS
shopt -s checkwinsize

# Set a simple prompt
PS1='camper: \[\033[01;34m\]/${PWD##*/}\[\033[00m\]\$ '

# Set history file location dynamically for Windows
# Use Windows-style paths or Git Bash paths that work on Windows
HISTFILE=/c/Users/$USER/.bash_history

# Use PROMPT_COMMAND to save history after every command and track working directory
# Dynamically referencing the username using $USER
PROMPT_COMMAND="echo \$PWD >> /c/Users/$USER/project/.freeCodeCamp/test/.cwd; history -a"

# Track the next command using the trap DEBUG feature
trap "echo \$BASH_COMMAND >> /c/Users/$USER/project/.freeCodeCamp/test/.next_command" DEBUG

# Add RVM to PATH for scripting
export PATH="$PATH:$HOME/.rvm/bin"

# Additional custom settings (if needed)
