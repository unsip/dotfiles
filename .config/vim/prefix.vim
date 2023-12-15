vim9script

if &compatible
    set nocompatible
endif

g:vim_home      = expand("~/.config/vim")
g:plugin_home   = g:vim_home .. '/plugins'
g:dep_home      = g:vim_home .. '/deps'
g:vimrc         = g:vim_home .. '/vimrc'
var vim_state   = expand("~/.local/state/vim")

if stridx(&runtimepath, g:vim_home) < 0
    &runtimepath = g:vim_home  .. "," .. &runtimepath
endif

&packpath  = &runtimepath
&backupdir = vim_state .. "/backup"
&directory = vim_state .. "/swap"
&undodir   = vim_state .. "/undo"

set hlsearch
set wildmenu
set foldmethod=marker
set wildoptions=pum
set hidden
set nowrap
set tabstop=4
set shiftwidth=4
set expandtab
set textwidth=120
set backspace=indent,eol,start

set fillchars=eob:\ ,vert:\│,fold:\ 
set listchars=tab:<->,trail:·
set clipboard=unnamedplus
set background=dark
