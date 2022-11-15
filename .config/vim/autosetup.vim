vim9script

const plug_path = g:dep_home .. "/plug.vim"
const plug_install_prompt = "Plug.vim is required but not present. Install it?"
const plug_install_url = "https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim"

const dirs = [
    &backupdir,
    &directory,
    &undodir,
    g:plugin_home,
    g:dep_home,
]

def Display(msg: string): void
    redraw
    echom msg
enddef

def SetupPlug(): bool
    if filereadable(plug_path)
        return true
    endif

    Display("Downloading plug.vim...")
    system("curl -fLo " .. plug_path .. " --create-dirs " .. plug_install_url)
    if v:shell_error != 0
        Display("Failed to install plug.vim")
        return false
    endif

    Display("Successfully installed plug.vim! Restart Vim and run :PlugInstall")
    return true
enddef

def TryCreateDir(path: string): bool
    const result = system("mkdir -p " .. path)
    if v:shell_error != 0
        Display("Failed to create '" .. path .. "': " .. result)
        return false
    endif
    return true
enddef

def SetupDirs(): bool
    Display("Creating directories...")
    for D in dirs
        if !TryCreateDir(D)
            return false
        endif
    endfor
    return true
enddef

def g:VimSetup(): void
    if !SetupDirs()
        return
    endif

    if !SetupPlug()
        return
    endif

    Display("Sourcing vimrc...")
    exe "source " .. g:vimrc

    redraw
    exe "PlugInstall"
enddef

command VimSetup :call g:VimSetup()
