#
# ~/.bash_profile
### runs on login ###
echo "start .bash_profile"
[[ -f /home/tim/.config/shell/.profile ]] && . /home/tim/.config/shell/.profile
#[[ -f ~/.bashrc ]] && . ~/.bashrc
#exec startx
echo "end .bash_profile"
