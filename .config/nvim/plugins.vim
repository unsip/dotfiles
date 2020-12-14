"
" Vim-plug settings
"

call plug#begin('$XDG_DATA_HOME/nvim/plugged')

" Completion
Plug 'Shougo/deoplete.nvim', { 'do' : 'UpdateRemotePlugins' }
Plug 'zchee/deoplete-jedi/'

" Navigation and interface
Plug 'scrooloose/nerdtree'
Plug 'itchyny/lightline.vim'

" Snippets
Plug 'editorconfig/editorconfig-vim'

" Highlight
Plug 'bronson/vim-trailing-whitespace'
Plug 'ap/vim-css-color'
Plug 'sheerun/vim-polyglot'

" Colorscheme
Plug 'joshdick/onedark.vim'

call plug#end()
