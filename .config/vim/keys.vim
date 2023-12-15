vim9script

g:mapleader = ";"

# * Keybindings: Convenience -------------------------------------------------

# INSERT MODE, TERMINAL MODE:
# Paste leader key on double-leader sequence
imap <Leader><Leader> <C-v><Leader>
tmap <Leader><Leader> <C-v><Leader>

# NORMAL MODE
# Write
#nmap ww :w<CR>

# NORMAL MODE
# <C-w>
nmap <Leader>w <C-w>

# NORMAL MODE
# Quit
nmap <Leader>q :q<CR>

# INSERT MODE
# <Esc>
imap jj <Esc>

# INSERT MODE
# Emit j
imap j<Leader> <C-v>j

# TERMINAL MODE
# Go to normal mode
tmap <Leader>gn <C-\><C-n>

# NORMAL MODE:
# Swap windows directionally
nmap <Leader>xk <C-W>k <C-W>x
nmap <Leader>xj <C-W>j <C-W>x
nmap <Leader>xh <C-W>h <C-W>x
nmap <Leader>xl <C-W>l <C-W>x

# NORMAL MODE:
# Quick commands for buffer switching
nmap <Leader>p :bp<CR>
nmap <Leader>n :bn<CR>

# NORMAL MODE:
# Remove search hl
nmap <Leader>hl :nohlsearch<CR>

# INSERT MODE
# Emit linebreak
imap <Leader>u <CR>
nmap <Leader>u <CR>

# * Keybindings: Floaterm ----------------------------------------------------

# NORMAL MODE
# Spawn 'nnn' in floaterm
nmap <Leader>m :FloatermNew --title=\ file\ manager\  nnn -defFDHRU<CR>

# NORMAL MODE
# Spawn terminal at buffer's basedir if possible, otherwise on cwd
nmap <Leader>t :call <SID>SpawnShell()<CR>

# * Keybindings: Blamer ------------------------------------------------------

# NORMAL MODE:
# Blamer
nmap <Leader>b :BlamerToggle<CR>

# * Functions ----------------------------------------------------------------

var ushell = expand("$SHELL")
if len(ushell) == 0
    ushell = "sh"
endif

def SpawnShell()
    var termdir = expand("%:p:h")

    if termdir == ""
        exe "FloatermNew --title=\\ term\\  " .. ushell
    else
        exe "FloatermNew --title=\\ term\\  --cwd=" .. termdir .. " " .. ushell
    endif
enddef
