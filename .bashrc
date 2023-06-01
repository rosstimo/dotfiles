#
# ~/.bashrc
### runs each time terminal opens ###

echo "start .bashrc"
# read primary profile if it exists
[[ -f ~/.config/shell/.profile ]] && . ~/.config/shell/.profile

#load bash tab completion
[ -r /usr/share/bash-completion/bash_completion ] && . /usr/share/bash-completion/bash_completion
shopt -s expand_aliases


### BASH HISTORY ###

# Enable history appending instead of overwriting.  #139609
shopt -s histappend

# no duplicates
export HISTCONTROL=ignoredups:erasedups
export HISTSIZE=10000
export HISTFILESIZE = 100000

echo "end .bashrc"
clear
