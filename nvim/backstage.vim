"
" Options and settings
"
set clipboard+=unnamedplus
set linebreak
set textwidth=79
set shiftwidth=4
set softtabstop=4
set expandtab
set number
set hidden
set foldmethod=marker

let g:deoplete#enable_at_startup = 1
let g:deoplete#enable_smart_case = 1
"let g:python_host_prog = ''
"let g:python3_host_prog = ''

" Deoplete tern
let g:tern_request_timeout = 1
let g:tern_show_signature_in_pum = '0'

"Add extra filetypes
let g:tern#filetypes = [
                \ 'jsx',
                \ 'javascript.jsx',
                \ 'vue',
                \ '...'
                \ ]

" Autoclose completion window
autocmd InsertLeave,CompleteDone * if pumvisible() == 0 | pclose | endif
