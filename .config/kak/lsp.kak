#
# LSP stuff
#

eval %sh{kak-lsp}
lsp-enable

map global user l ': enter-user-mode lsp<ret>' -docstring 'LSP mode'
map global insert <c-l> '<a-;>:try lsp-snippets-select-next-placeholders catch %{}<ret>' -docstring 'Select next snippet placeholder'
map global object a '<a-semicolon>lsp-object<ret>' -docstring 'LSP any symbol'
map global object <a-a> '<a-semicolon>lsp-object<ret>' -docstring 'LSP any symbol'
map global object f '<a-semicolon>lsp-object Function Method<ret>' -docstring 'LSP function or method'
map global object t '<a-semicolon>lsp-object Class Interface Struct<ret>' -docstring 'LSP class interface or struct'
map global object d '<a-semicolon>lsp-diagnostic-object --include-warnings<ret>' -docstring 'LSP errors and warnings'
map global object D '<a-semicolon>lsp-diagnostic-object<ret>' -docstring 'LSP errors'

map global user k ': lsp-hover<ret>' -docstring 'LSP hover'
map global user a ': lsp-code-actions<ret>' -docstring 'LSP code actions'
map global user r ': lsp-rename-prompt<ret>' -docstring 'LSP rename symbol'
