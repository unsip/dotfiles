"
" Options and settings
"
set clipboard+=unnamedplus
set expandtab
set foldmethod=marker
set hidden
set laststatus=2
set linebreak
set shiftwidth=4
set softtabstop=4
set textwidth=130
set relativenumber
set hidden

" FileType plugin
filetype plugin indent on

" Colors
syntax on
colorscheme default

" Deoplete
let g:deoplete#enable_at_startup = 1
let g:python3_host_prog = '/usr/bin/python'

" nnn integration
let g:nnn#layout = { 'window': { 'width': 0.9, 'height': 0.6, 'highlight': 'Debug' } }
let g:nnn#command = 'nnn -defFDHRU'
let g:nnn#action = {
      \ '<c-t>': 'tab split',
      \ '<c-s>': 'split',
      \ '<c-v>': 'vsplit' }

" Autoclose completion window
autocmd InsertLeave,CompleteDone * if pumvisible() == 0 | pclose | endif
