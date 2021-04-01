"
" Nvim bind mappings
"
nnoremap gb :ls<CR>:b<Space>

" Deoplete tab-completion
inoremap <expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"
