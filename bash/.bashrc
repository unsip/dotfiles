#!/usr/bin/bash

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Disable temp for liquidprompt
LP_ENABLE_TEMP=0

# Load environment
[[ $- = *i* ]] && source ~/.config/liquidprompt/liquidprompt
[ -f /etc/profile ] && source /etc/profile

# Some var's
export EDITOR=nvim
export WORK_DIR="/storage/work"

# User NPM packages
NPM_PACKAGES="${HOME}/.npm-packages"
PROCESSING="${HOME}/Downloads/processing-3.5.3"
PATH="$PROCESSING:$NPM_PACKAGES/bin:/sbin:/usr/sbin:$PATH"
unset MANPATH
export MANPATH="$NPM_PACKAGES/share/man:$(manpath)"

# Virtualenvwrapper
virtualenvwrapper="/usr/bin/virtualenvwrapper.sh"
if [ -f ${virtualenvwrapper} ]
then
    source ${virtualenvwrapper}
fi

# Aliases
alias changettl="echo 65 | sudo tee /proc/sys/net/ipv4/ip_default_ttl"
alias fix_bl="sudo modprobe -r btusb && sudo modprobe btusb"
alias vim="nvim"

# Setup history
HISTCONTROL=ignoredups:erasedups
HISTSIZE=100000
HISTFILESIZE=1000000
HISTIGNORE="&:[ ]*:exit:ls:ll:pwd:mc:su:df:du:clear:reset:fg:bg:ipython"

# Wine path
export WINEARCH="win64"
export WINEPREFIX="/home/unsip/.wine"

# Steam
#STEAM_RUNTIME="~/.steam"

