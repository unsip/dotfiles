#!/usr/bin/bash

# If not running interactively, don't do anything
[[ $- != *i* ]] && return
[[ $- = *i* ]] && source ~/.config/liquidprompt/liquidprompt

[ -f /etc/profile ] && source /etc/profile

export EDITOR=nvim

alias today='task project:Today'

# User NPM packages
NPM_PACKAGES="${HOME}/.npm-packages"
PATH="$NPM_PACKAGES/bin:/sbin:$PATH"
unset MANPATH 
export MANPATH="$NPM_PACKAGES/share/man:$(manpath)"

# Virtualenvwrapper
# source /usr/bin/virtualenvwrapper.sh

# Setup history
HISTCONTROL=ignoredups:erasedups
HISTSIZE=100000
HISTFILESIZE=1000000
HISTIGNORE="&:[ ]*:exit:ls:ll:pwd:mc:su:df:du:du0:du1:clear:reset:fg:bg:ipython"
