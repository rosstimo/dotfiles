#!/bin/sh

echo "start .profile"

# add scripts dir to path
[ -d "$HOME/.local/bin" ] && export PATH="$HOME/.local/bin:$PATH"
[ -d "$HOME/.local/shell" ] && export PATH="$HOME/.local/shell:$PATH"
#All paths set in these environment variables must be absolute. If an implementation encounters a relative path in any of these variables it should consider the path invalid and ignore it.

## exports ##
export EDITOR="nvim"
export TERMINAL="alacritty"
export BROWSER="firefox"
#TODO set up an XDG export file annd only load when appropriate. not sure if XFCE desktop uses exa_open or something.
##XDG environment variables ##
## see https://specifications.freedesktop.org/basedir-spec/basedir-spec-latest.html

#export XDG_DATA_HOME=$HOME/.local/share/
#export XDG_CONFIG_HOME=$HOME/.config/
#export XDG_STATE_HOME=$HOME/.local/state/
#export XDG_DATA_DIRS=$HOME/.local/share/:/usr/local/share/:usr/share/
#export XDG_CONFIG_DIRS=/etc/xdg/
#export XDG_CACHE_HOME=$HOME/.cache/



## sources

# load all files listed in .bash_sources
# TODO load sources only if .bash_sources file exsts
#sourcefiles=$(cat ~/.config/shell/.bash_sources)
#for file in $sourcefiles; do
#    [ -r "$file" ] && [ -f "$file" ] && source "$file";
#done;
#unset file;
#unset sourcefiles;

# [ -f ~/.local/shell/aliasrc ] && source "$HOME/.local/shell/aliasrc"
# read prompt settings if exists
[[ -f /home/tim/.config/shell/.bash_prompt ]] && . /home/tim/.config/shell/.bash_prompt
[[ -f /home/tim/.config/shell/aliasrc ]] && . /home/tim/.config/shell/aliasrc
echo "end .profile"
