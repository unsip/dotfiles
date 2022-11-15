vim9script

set laststatus=2

const FILENAME_LEN = 24
const BRANCH_LEN = 20
const R_ELLIPSIS = '>>'
const L_ELLIPSIS = '<<'
const MODESYMS = {
    'c': '>',
    'i': '+',
}

def g:UserStatusMode(): string
    const m = mode()
    return '(' .. get(MODESYMS, m, toupper(m)) .. ')'
enddef

def g:UserStatusModified(): string
    if !&modifiable
        return '-'
    endif

    if &modified
        return '*'
    endif

    return ''
enddef

def g:UserStatusFiletype(): string
    if empty(&filetype)
        return ''
    endif

    var res = '[' .. &filetype
    const enc = !!&fileencoding ? &fileencoding : &encoding

    if !empty(enc)
        res = res .. '/' .. enc
    endif

    return res .. ']'
enddef

def g:UserStatusFilepath(): string
    var p = expand('%:p')

    if empty(p)
        return ''
    endif

    const home = getenv('HOME')
    p = substitute(p, home, '~', '')

    if len(p) > FILENAME_LEN
        p = L_ELLIPSIS .. p[-FILENAME_LEN + len(L_ELLIPSIS) : ]
    endif

    return p .. g:UserStatusModified()
enddef

def g:UserStatusCondSeparator(cond: bool, sep: string): string
    return cond ? sep : ''
enddef

def g:UserStatusStats(): string
    const lines = '' .. line('$')
    return printf(
        '(%0' .. min([len(lines), 3]) .. 'd:%02d) Ls:%s Ws:%d',
        line('.'),
        col('.'),
        lines,
        wordcount()['words'],
    )
enddef

set statusline=
set statusline+=%{UserStatusMode()}
set statusline+=\ {b%n}%{UserStatusCondSeparator(!empty(expand("%")),":")}
set statusline+=%q
set statusline+=%{UserStatusFilepath()}
set statusline+=%=
set statusline+=%{UserStatusFiletype()}\ 
set statusline+=%{UserStatusStats()}
