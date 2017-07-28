
"
" Vim-plug settings 
"

call plug#begin('$XDG_DATA_HOME/nvim/plugged')
Plug 'Shougo/deoplete.nvim', { 'do' : 'UpdateRemotePlugins' }
Plug 'zchee/deoplete-jedi/'
Plug 'carlitux/deoplete-ternjs', { 'do': 'npm install -g tern' }
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'scrooloose/nerdtree'
Plug 'jiangmiao/auto-pairs'
Plug 'editorconfig/editorconfig-vim'
call plug#end()
