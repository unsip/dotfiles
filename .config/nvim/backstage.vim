"
" Options and settings
"
set clipboard+=unnamedplus
set expandtab
set foldmethod=marker
set hidden
set laststatus=2
set linebreak
set relativenumber
set shiftwidth=4
set softtabstop=4
set textwidth=130

" FileType plugin
filetype plugin indent on

" Colors
syntax on
colorscheme default

let g:python3_host_prog = '/usr/bin/python'

" Autoclose completion window
autocmd InsertLeave,CompleteDone * if pumvisible() == 0 | pclose | endif

let g:floaterm_opener = 'edit'
let g:floaterm_autoclose = 2
let g:floaterm_title = ''
let g:floaterm_width = 0.8
let g:floaterm_height = 0.7

hi FloatermBorder guibg=black guifg=white
