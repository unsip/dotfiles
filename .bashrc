#!/usr/bin/bash

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Load environment
[ -f /etc/profile ] && source /etc/profile

export EDITOR=nvim
# Required for waybar tray.
export XDG_CURRENT_DESKTOP="Unity"

# Aliases
alias changettl="echo 65 | sudo tee /proc/sys/net/ipv4/ip_default_ttl"
alias fix_bl="sudo modprobe -r btusb && sudo modprobe btusb"
alias vim="nvim"
alias firefox="GDK_BACKEND=wayland firefox"
alias n="nnn -defFDHRU"

# Setup history
HISTCONTROL=ignoredups:erasedups
HISTSIZE=100000
HISTFILESIZE=1000000
HISTIGNORE="&:[ ]*:exit:ls:ll:pwd:mc:su:df:du:clear:reset:fg:bg:ipython"

# nnn
#export NNN_COLORS='01234567'
export NNN_ARCHIVE='\\.(7z|bz2|gz|tar|zip|rar)$'
export NNN_BMS='s:/storage/;w:/storage/work/;D:~/Downloads/;d:/storage/downloads/'
nnn_cd()
{
    if ! [ -z "$NNN_PIPE" ]; then
        printf "%s\0" "0c${PWD}" > "${NNN_PIPE}" !&
    fi
}

trap nnn_cd EXIT


export fl_dir='/home/unsip/.local/share/flatpak/exports/share'
