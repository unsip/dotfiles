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
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Snippets
Plug 'jiangmiao/auto-pairs'
Plug 'editorconfig/editorconfig-vim'

" Linting
Plug 'vim-syntastic/syntastic'

" Highlight
Plug 'bronson/vim-trailing-whitespace'
Plug 'ap/vim-css-color'
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'

" Colorscheme
Plug 'w0ng/vim-hybrid'
call plug#end()
