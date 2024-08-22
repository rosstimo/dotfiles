#!/bin/sh

# if $DEBUG is set then echo start of .profile
[ -n "$DEBUG" ] && echo "start .profile"

# add scripts dir to path
[ -d "$HOME/.local/bin" ] && export PATH="$HOME/.local/bin:$PATH"
[ -d "$HOME/.local/shell" ] && export PATH="$HOME/.local/shell:$PATH"
[ -d "$HOME/.screenlayout" ] && export PATH="$HOME/.screenlayout:$PATH"
[ -d "$HOME/.local/share/arduino/" ] && export PATH="$HOME/.local/share/arduino:$PATH"

## exports ##
export EDITOR="nvim"
export TERMINAL="kitty" #"alacritty"
export BROWSER="firefox"
export LANGUAGE="en_US.UTF-8"
export LC_ALL="en_US.UTF-8"
export KICAD_CUSTOM_LIB_DIR="$HOME/Documents/kiCad/KiCadLibs/"
# for stable diffusion
export PATH=/opt/cuda/bin:$PATH
export LD_LIBRARY_PATH=/opt/cuda/lib64:$LD_LIBRARY_PATH

## sources ##

# read prompt settings if exists
# [ -f "$HOME/.config/shell/.bash_prompt" ] && . $HOME/.config/shell/.bash_prompt
# read aliases if exists
[ -f "$HOME/.config/shell/aliasrc" ] && . $HOME/.config/shell/aliasrc

# if $DEBUG is set then echo end of .profile
[ -n "$DEBUG" ] && echo "end .profile"
