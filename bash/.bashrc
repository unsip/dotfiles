#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return
[[ $- = *i* ]] && source ~/.config/liquidprompt/liquidprompt

[ -f /etc/profile ] && source /etc/profile

 export LANG=en_US.UTF-8
 export LC_MESSAGES="C"
export EDITOR=nvim

alias flux='xflux -l 59.9 -g 30.3'

# Setup history
HISTCONTROL=ignoredups:erasedups
HISTSIZE=100000
HISTFILESIZE=1000000
HISTIGNORE="&:[ ]*:exit:ls:ll:pwd:mc:su:df:du:du0:du1:clear:reset:fg:bg:ipython"

# Import colorscheme from wal
(wal -r &)
