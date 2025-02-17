#
# Mappings
#
map global normal '#' :comment-line<ret> -docstring 'comment line'

map global user y ':system-clipboard-y<ret>' -docstring 'Copy to system clipboard'
map global user p ':system-clipboard-p<ret>' -docstring 'Append from system clipboard'
map global user P ':system-clipboard-P<ret>' -docstring 'Prepend from system clipboard'
map global user w '|fmt -w $kak_opt_autowrap_column<ret>' -docstring 'Wrap selection'

# Paragraph scroll
map global normal '<minus>' '[p'
map global normal '=' '<a-a>p'
map global normal '<plus>' '}p'
