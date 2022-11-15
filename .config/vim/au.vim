vim9script

def g:EditCmd()
    if &buftype == ""
        setlocal colorcolumn=81,121
        setlocal nu
        setlocal cul
        setlocal rnu
        setlocal list
    endif
enddef

def g:FocusCmd()
    if &buftype == ""
        setlocal colorcolumn=81,121
        setlocal cul
        setlocal rnu
        setlocal list
    endif
enddef

def g:UnfocusCmd()
    if &buftype == ""
        setlocal colorcolumn=
        setlocal nocul
        setlocal nornu
        setlocal nolist
    endif
enddef

augroup TextEdit
    au!
    au BufRead,BufNewFile * call g:EditCmd()
augroup END

augroup Focus
    au!
    au WinEnter * call g:FocusCmd()
    au WinLeave * call g:UnfocusCmd()
augroup END

au SigUSR1 call g:ReadThemeFile()
