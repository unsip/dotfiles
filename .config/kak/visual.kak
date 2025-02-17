#
# Visuals and highlighters
#

add-highlighter global/ number-lines -relative -separator ' ' -hlcursor
add-highlighter global/ wrap -word
add-highlighter global/ show-matching -previous
add-highlighter global/ show-whitespaces -lf ' ' -only-trailing

# Switch cursor color in insert mode
set-face global InsertCursor default,green+B

hook global ModeChange .*:.*:insert %{
    set-face window PrimaryCursor InsertCursor
    set-face window PrimaryCursorEol InsertCursor
}

hook global ModeChange .*:insert:.* %{ try %{
    unset-face window PrimaryCursor
    unset-face window PrimaryCursorEol
}}
