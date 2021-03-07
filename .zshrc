# Created by newuser for 5.8

# Enale colors and adding A good Prompt
autoload -U colors && colors
PS1="[JZDoot]$"

# setting history
HISTSIZE=10000
SAVEHIST=10000
HISTFILE=/home/jzdoot/.zsh_history

# exports
export MANPAGER="sh -c 'col -bx | bat -l man -p'"

# auto run
neofetch
