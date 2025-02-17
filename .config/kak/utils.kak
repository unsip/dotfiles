#
# Functions and utilities
#

# Copy/paste using system clipboard
def system-clipboard-y -docstring 'Copy to system clipboard' %{
  eval %sh{
    if [ -n "$WAYLAND_DISPLAY" ]; then
      printf "%s\n" "execute-keys '<a-|>wl-copy<ret>'"
    elif [ -n "$DISPLAY" ]; then
      printf "%s\n" "execute-keys '<a-|>xclip -sel clip<ret>'"
    else
      printf "%s\n" "fail 'Could not identify a desktop session'"
    fi
  }
}

def system-clipboard-P -docstring 'Prepend from system clipboard' %{
  eval %sh{
    if [ -n "$WAYLAND_DISPLAY" ]; then
      printf "%s\n" "execute-keys '!wl-paste --no-newline<ret>'"
    elif [ -n "$DISPLAY" ]; then
      printf "%s\n" "execute-keys '!xclip -out -sel clip<ret>'"
    else
      printf "%s\n" "fail 'Could not identify a desktop session'"
    fi
  }
}

def system-clipboard-p -docstring 'Append from system clipboard' %{
  eval %sh{
    if [ -n "$WAYLAND_DISPLAY" ]; then
      printf "%s\n" "execute-keys '<a-!>wl-paste --no-newline<ret>'"
    elif [ -n "$DISPLAY" ]; then
      printf "%s\n" "execute-keys '<a-!>xclip -out -sel clip<ret>'"
    else
      printf "%s\n" "fail 'Could not identify a desktop session'"
    fi
  }
}
