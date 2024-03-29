#!/usr/bin/bash

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Load environment
[ -f /etc/profile ] && source /etc/profile

export TERM="xterm-256color"

# Wayland-specific exports
export GDK_BACKEND=wayland
export SDL_VIDEODRIVER=wayland
export CLUTTER_BACKEND=wayland
export XDG_SESSION_TYPE=wayland
#export XDG_CURRENT_DESKTOP=wayland

# FF open links issue
MOZ_ENABLE_WAYLAND=1
MOZ_DBUS_REMOTE=1

export EDITOR=nvim
export PATH="${PATH}:~/.local/bin:~/.cargo/bin:~/go/bin"

# Required for waybar tray.
export XDG_CURRENT_DESKTOP="sway"
export PASSWORD_STORE_X_SELECTION="wl-copy"

# Smart-prompt
#export INPUTRC="${XDG_CONFIG_HOME}/inputrc"
export PROMPT_DIRTRIM="3"

# nnn
export NNN_COLORS='2415'
export NNN_ARCHIVE='\\.(7z|bz2|gz|tar|zip|rar)$'
export NNN_BMS='s:/storage/;b:/storage/books/;w:/storage/work/;D:~/Downloads/;d:/storage/downloads/;m:/storage/multimedia/music/;M:/storage/multimedia/movies/'

# Flatpack
export fl_dir='/home/unsip/.local/share/flatpak/exports/share'

# Aliases
alias changettl="echo 65 | sudo tee /proc/sys/net/ipv4/ip_default_ttl"
alias fix_bl="sudo modprobe -r btusb && sudo modprobe btusb"
alias n="nnn -defHRU"

alias kubectl="minikube kubectl --"

# Docker
alias ds='docker stop'
alias de='docker exec -it'
alias dps='docker ps -a'
alias dlg='docker logs -f --tail=100'
alias dc='docker container'
alias dcls='docker container ls'
alias dcpr='docker container prune -f'
alias di='docker image'
alias dils='docker image ls'
alias dipr='docker image prune -f'
alias dnls='docker network ls'
alias crb='docker-compose up -d --build --force-recreate'
alias cup='docker-compose up -d'
alias cdw='docker-compose down'

# Setup history
HISTCONTROL=ignoredups:erasedups
HISTSIZE=100000
HISTFILESIZE=1000000
HISTIGNORE="&:[ ]*:exit:ls:ll:pwd:mc:n:su:df:du:clear:reset:fg:bg:ipython"

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/home/unsip/Downloads/tmp/google-cloud-sdk/path.bash.inc' ]; then . '/home/unsip/Downloads/tmp/google-cloud-sdk/path.bash.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/home/unsip/Downloads/tmp/google-cloud-sdk/completion.bash.inc' ]; then . '/home/unsip/Downloads/tmp/google-cloud-sdk/completion.bash.inc'; fi

if [ -f '/home/unsip/Downloads/Telegram/Telegram' ]; then
    export PATH="/home/unsip/Downloads/Telegram/:$PATH";
fi
