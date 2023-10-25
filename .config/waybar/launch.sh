#!/bin/sh
#  ____  _             _    __        __          _                 
# / ___|| |_ __ _ _ __| |_  \ \      / /_ _ _   _| |__   __ _ _ __  
# \___ \| __/ _` | '__| __|  \ \ /\ / / _` | | | | '_ \ / _` | '__| 
#  ___) | || (_| | |  | |_    \ V  V / (_| | |_| | |_) | (_| | |    
# |____/ \__\__,_|_|   \__|    \_/\_/ \__,_|\__, |_.__/ \__,_|_|    
#                                           |___/                   
# by Stephan Raabe (2023) 
# modified by Tim Rossiter (2023)
# ----------------------------------------------------- 

# ----------------------------------------------------- 
# Quit running waybar instances
# ----------------------------------------------------- 
#killall waybar
pkill waybar

# ----------------------------------------------------- 
# Loading the configuration based on the username
# ----------------------------------------------------- 
#if [[ $USER = "tim" ]]
#then
    waybar -c $HOME/.config/waybar/config & -s $HOME/.config/waybar/style.css  # location env var?
#else
#    waybar &
#fi 
