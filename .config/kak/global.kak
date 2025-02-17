#
# General global options and hooks
#

set-option global grepcmd 'rg --hidden'

# Load EditorConfig and set smarttab
hook global BufOpenFile .* %{ editorconfig-load; autoconfigtab }
hook global BufNewFile .* %{ editorconfig-load; autoconfigtab }

# Tab completion
hook global InsertCompletionShow .* %{
    map window insert <tab> <c-n>
    map window insert <s-tab> <c-p>
}
hook global InsertCompletionHide .* %{
    unmap window insert <tab> <c-n>
    unmap window insert <s-tab> <c-p>
}
