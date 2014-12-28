#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return
echo 'Reading ~/.bashrc'

## Prompt String Parameters
#PS1='\u@\H@\t\W$?'
PS1='#$? '

set -bC -o vi -o ignoreeof
# POSIX shell options:
# '-b' == '-o notify' notifies you when a background job finished
# '-C' == '-o noclobber' disallows overwriting files with '>'
# '-o vi' turns on vi-style mode line editing

alias ls='ls --color=auto'
alias debug='set -uvx'
alias remir='sudo reflector --verbose -l32 -f8 --sort rate --save /etc/pacman.d/mirrorlist'
alias p='sudo cpupower frequency-set -g performance'

# Move this to a separate file from which it can be sourced!

# Why are they killing whitespace? Investigate!
deko () { echo "x$@x"; }

tsan(){
TSAN_OPTIONS='log_path=~/tsan-log verbosity=1'\
export TSAN_OPTIONS;
$@;
}
