"
" Vim-plug settings
"

call plug#begin('$XDG_DATA_HOME/nvim/plugged')

" Completion
Plug 'Shougo/deoplete.nvim'
Plug 'zchee/deoplete-jedi'

" Navigation and interface
Plug 'itchyny/lightline.vim'
Plug 'voldikss/vim-floaterm'

" Snippets
Plug 'editorconfig/editorconfig-vim'

" Highlight
Plug 'bronson/vim-trailing-whitespace'
Plug 'ap/vim-css-color'
Plug 'sheerun/vim-polyglot'
Plug 'https://gitlab.exherbo.org/exherbo-misc/exheres-syntax.git'

call plug#end()
