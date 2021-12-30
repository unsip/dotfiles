"
" Vim-plug settings
"

call plug#begin('$XDG_DATA_HOME/nvim/plugged')

" Completion
Plug 'ms-jpq/coq_nvim', {'branch': 'coq'}
Plug 'ms-jpq/coq.artifacts', {'branch': 'artifacts'}

" Navigation and interface
Plug 'itchyny/lightline.vim'
Plug 'voldikss/vim-floaterm'

" Snippets
Plug 'editorconfig/editorconfig-vim'

" Highlight
Plug 'ntpeters/vim-better-whitespace'
Plug 'ap/vim-css-color'
Plug 'sheerun/vim-polyglot'
Plug 'https://gitlab.exherbo.org/exherbo-misc/exheres-syntax.git'

call plug#end()
