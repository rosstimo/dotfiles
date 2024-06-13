#!/bin/bash
### runs each time terminal opens bash shell###

# if $DEBUG is set then echo start of .bashrc
[ -n "$DEBUG" ] && echo "start .bashrc"

# run raabe .bashrc first
[[ -f $HOME/dotfiles/.bashrc ]] && . $HOME/dotfiles/.bashrc


# read primary profile if it exists
[[ -f $HOME/.config/shell/.profile ]] && . $HOME/.config/shell/.profile

# read .bash_prompt if it exists
[[ -f $HOME/.config/shell/.bash_prompt ]] && . $HOME/.config/shell/.bash_prompt

#load bash tab completion
[ -r /usr/share/bash-completion/bash_completion ] && . /usr/share/bash-completion/bash_completion
shopt -s expand_aliases


### BASH HISTORY ###

# Enable history appending instead of overwriting.  #139609
shopt -s histappend

# no duplicates
export HISTCONTROL=ignoredups:erasedups
export HISTSIZE=10000
export HISTFILESIZE=100000

# if $DEBUG is set then echo end of .bashrc
[ -n "$DEBUG" ] && echo "end .bashrc"
