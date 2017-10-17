"
" Nvim bind mappings
"

nmap <silent> <C-p> :NERDTreeToggle<CR>
nnoremap gb :ls<CR>:b<Space>

" Deoplete tab-completion 
inoremap <expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"
