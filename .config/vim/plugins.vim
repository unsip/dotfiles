vim9script

const plug_path = g:dep_home .. '/plug.vim'

if filereadable(plug_path)
    import plug_path

    plug#begin(g:plugin_home)
        # Navigation and interface
        Plug 'APZelos/blamer.nvim'
        Plug 'itchyny/lightline.vim'
        Plug 'voldikss/vim-floaterm'

        # Snippets
        Plug 'editorconfig/editorconfig-vim'

        # Highlight
        Plug 'ntpeters/vim-better-whitespace'
        Plug 'ap/vim-css-color'
        Plug 'sheerun/vim-polyglot'
        Plug 'https://gitlab.exherbo.org/exherbo-misc/exheres-syntax.git'
    plug#end()
endif
