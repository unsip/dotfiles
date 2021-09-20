#!/usr/bin/bash

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Load environment
[ -f /etc/profile ] && source /etc/profile

# Wayland-specific exports
export GDK_BACKEND=wayland
export SDL_VIDEODRIVER=wayland
export CLUTTER_BACKEND=wayland

# FF open links issue
MOZ_ENABLE_WAYLAND=1
MOZ_DBUS_REMOTE=1

export EDITOR=nvim
export PATH="${PATH}:/home/unsip/.local/bin"

QT_QPA_PLATFORMTHEME="qt5ct"
# Required for waybar tray.
export XDG_CURRENT_DESKTOP="Unity"
export PASSWORD_STORE_X_SELECTION="wl-copy"

# Smart-prompt
#export INPUTRC="${XDG_CONFIG_HOME}/inputrc"
export PROMPT_DIRTRIM="3"

# nnn
export NNN_COLORS='2415'
export NNN_ARCHIVE='\\.(7z|bz2|gz|tar|zip|rar)$'
export NNN_BMS='s:/storage/;b:/storage/books/;w:/storage/work/;D:~/Downloads/;d:/storage/downloads/;m:/storage/multimedia/music/'

# Flatpack
export fl_dir='/home/unsip/.local/share/flatpak/exports/share'

# Aliases
alias changettl="echo 65 | sudo tee /proc/sys/net/ipv4/ip_default_ttl"
alias fix_bl="sudo modprobe -r btusb && sudo modprobe btusb"
alias vim="nvim"
alias n="nnn -defwHRU"

# Setup history
HISTCONTROL=ignoredups:erasedups
HISTSIZE=100000
HISTFILESIZE=1000000
HISTIGNORE="&:[ ]*:exit:ls:ll:pwd:mc:n:su:df:du:clear:reset:fg:bg:ipython"
