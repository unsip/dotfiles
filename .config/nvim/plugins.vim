"
" Vim-plug settings
"

call plug#begin('$XDG_DATA_HOME/nvim/plugged')

" Completion
Plug 'Shougo/deoplete.nvim', { 'do' : 'UpdateRemotePlugins' }
Plug 'zchee/deoplete-jedi/'
Plug 'carlitux/deoplete-ternjs', { 'do': 'npm install -g tern' }

" Navigation and interface
Plug 'scrooloose/nerdtree'
Plug 'itchyny/lightline.vim'

" Snippets
Plug 'jiangmiao/auto-pairs'
Plug 'editorconfig/editorconfig-vim'

" Highlight
Plug 'bronson/vim-trailing-whitespace'
Plug 'ap/vim-css-color'
Plug 'sheerun/vim-polyglot'
Plug 'sophacles/vim-processing'

" Colorscheme
Plug 'joshdick/onedark.vim'

call plug#end()
