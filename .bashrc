#!/usr/bin/bash

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Load environment
[ -f /etc/profile ] && source /etc/profile

export EDITOR=nvim
export PATH="${PATH}:${HOME}/.local/bin"

# nnn
export NNN_COLORS='2415'
export NNN_ARCHIVE='\\.(7z|bz2|gz|tar|zip|rar)$'
export NNN_BMS='w:~/work/;D:~/Downloads/;'

# Aliases
alias vpn='sudo openvpn --auth-user-pass --auth-retry interact --config'
alias changettl="echo 65 | sudo tee /proc/sys/net/ipv4/ip_default_ttl"
alias fix_bl="sudo modprobe -r btusb && sudo modprobe btusb"
alias vi="nvim"
alias vim="nvim"
alias n="nnn -defHRU"

# Setup history
HISTCONTROL=ignoredups:erasedups
HISTSIZE=100000
HISTFILESIZE=1000000
HISTIGNORE="&:[ ]*:exit:ls:ll:pwd:mc:n:su:df:du:clear:reset:fg:bg:ipython"
