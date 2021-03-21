"
" Options and settings
"
set clipboard+=unnamedplus
set expandtab
set foldmethod=marker
set hidden
set laststatus=2
set linebreak
set number
set shiftwidth=4
set softtabstop=4
set textwidth=130
set relativenumber

" FileType plugin
filetype plugin indent on

" Colors
syntax on
colorscheme default

" Highlight JSX
let g:jsx_ext_required = 0

" Deoplete tern
let g:deoplete#enable_at_startup = 1
let g:python3_host_prog = '/usr/bin/python'

let g:tern_request_timeout = 1
let g:tern_show_signature_in_pum = '0'

" Autoclose completion window
autocmd InsertLeave,CompleteDone * if pumvisible() == 0 | pclose | endif
