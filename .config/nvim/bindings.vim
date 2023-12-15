"
" Nvim bind mappings
"

" Set <Leader> to something sensible
let mapleader=';'

" * Keybindings: Convenience -------------------------------------------------

" INSERT TERMINAL: Paste leader key on double-leader sequence
imap <Leader><Leader> <C-v><Leader>
tmap <Leader><Leader> <C-v><Leader>

" NORMAL: Quick commands for buffer switching
nnoremap gb :ls<CR>:b<Space>
nmap <Leader>p :bp<CR>
nmap <Leader>n :bn<CR>

" NORMAL: Send <C-W> easier
nnoremap <Leader>w <C-W>

" NORMAL: :q on ;q
nnoremap <Leader>q :q<CR>

" INSERT: <Esc>
imap jj <Esc>

" INSERT: Emit j
imap j<Leader> <C-v>j

" TERMINAL: Go to normal mode
tmap <Leader>gn <C-\><C-n>

" NORMAL: Remove search hl
nmap <Leader>hl :nohlsearch<CR>


" * Keybindings: Floaterm ----------------------------------------------------

" NORMAL: Spawn 'nnn' in floaterm
nmap <Leader>m :FloatermNew --title=\ file\ manager\  nnn -defFDHRU<CR>

" NORMAL: Terminal
nnoremap <Leader>t :FloatermNew tmux<CR>

" * Keybindings: Blamer ------------------------------------------------------

" NORMAL: Blamer
nmap <Leader>b :BlamerToggle<CR>

