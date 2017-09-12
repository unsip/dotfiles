"
" Nvim bind mappings
"

nmap <silent> <C-p> :NERDTreeToggle<CR>

" Deoplete tab-completion 
inoremap <expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"
