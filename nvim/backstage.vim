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
set textwidth=79

" Highlight JSX
let g:jsx_ext_required = 0

" Deoplete tern
let g:deoplete#enable_at_startup = 1
let g:deoplete#enable_smart_case = 1

let g:tern_request_timeout = 1
let g:tern_show_signature_in_pum = '0'

" Add extra filetypes
let g:tern#filetypes = [
                \ 'jsx',
                \ 'javascript.jsx',
                \ 'vue',
                \ '...'
                \ ]

" Autoclose completion window
autocmd InsertLeave,CompleteDone * if pumvisible() == 0 | pclose | endif

" Syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

let g:syntastic_python_checkers = ['pylint']
let g:syntastic_css_checkers = ['csslint']
let g:syntastic_html_checkers = ['eslint']
let g:syntastic_js_checkers = ['eslint', 'jsxhint']
let g:syntastic_jsx_checkers = ['eslint', 'jsxhint']

" Airline
let g:airline_theme='raven'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline_right_sep = ' '
let g:airline_right_alt_sep = ' | '

let g:airline_powerline_fonts = 1
let g:airline_exclude_preview = 0
