"
" Nvim bind mappings
"

" Set <Leader> to something sensible
let mapleader=';'

nnoremap gb :ls<CR>:b<Space>

" Deoplete tab-completion
inoremap <expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"

" NORMAL: NNN on <Leader>n
nnoremap <Leader>n :FloatermNew nnn -defFDHRU<CR>

" NORMAL: Terminal
nnoremap <Leader>t :FloatermNew tmux<CR>

" NORMAL: Send <C-W> easier
nnoremap <Leader>w <C-W>

" NORMAL: :q on ;q
nnoremap <Leader>q :q<CR>
