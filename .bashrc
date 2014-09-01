#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

#why doesn't bash export this? (POSIX or dumb?)
## Prompt String Parameters
PS1='\u@\H@\t\W$?\r'

set -bC -o vi -o ignoreeof
# POSIX shell options:
# '-b' == '-o notify' notifies you when a background job finished
# '-C' == '-o noclobber' disallows overwriting files with '>'
# '-o vi' turns on vi-style mode line editing

alias ls='ls --color=auto'
alias debug='set -uvx'


# Move this to a separate file from which it can be sourced!

# Why are they killing whitespace? Investigate!
deko () { echo "x$@x"; }
