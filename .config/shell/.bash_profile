#!/bin/bash

### runs on login ###
# if $DEBUG is set then echo start of .bash_profile
[ -n "$DEBUG" ] && echo "start .bash_profile"

# if $HOME/.bashrc exists then source it
[ -f "$HOME/.bashrc" ] && . $HOME/.bashrc

# if $DEBUG is set then echo end of .bash_profile
[ -n "$DEBUG" ] && echo "end .bash_profile"
