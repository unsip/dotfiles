#!/usr/bin/bash

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Load environment
[ -f /etc/profile ] && source /etc/profile

export TERM="xterm-256color"
export EDITOR=nvim
export PATH="${PATH}:~/.local/bin:~/.cargo/bin:~/go/bin"

# nnn
export NNN_COLORS='2415'
export NNN_ARCHIVE='\\.(7z|bz2|gz|tar|zip|rar)$'
export NNN_BMS='s:/storage/;b:/storage/books/;w:/storage/work/;D:~/Downloads/;d:/storage/downloads/;m:/storage/multimedia/music/;M:/storage/multimedia/movies/'
export NNN_PLUG='c:cdpath;f:finder;o:fzopen;d:fzcd;i:diffs;h:fzhist;s:suedit'

# Flatpack
export fl_dir='/home/unsip/.local/share/flatpak/exports/share'

# Aliases
alias changettl="echo 65 | sudo tee /proc/sys/net/ipv4/ip_default_ttl"
alias fix_bl="sudo modprobe -r btusb && sudo modprobe btusb"
alias n="nnn -defHRU"
alias vi="nvim"

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

[ -f ~/.fzf.bash ] && source ~/.fzf.bash

