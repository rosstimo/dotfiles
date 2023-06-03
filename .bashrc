#!/bin/bash
### runs each time terminal opens bash shell###

# if $DEBUG is set then echo start of .bashrc
[ -n "$DEBUG" ] && echo "start .bashrc"

# read primary profile if it exists
[[ -f $HOME/.config/shell/.profile ]] && . $HOME/.config/shell/.profile

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
