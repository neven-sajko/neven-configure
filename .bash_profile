#
# ~/.bash_profile
#

export PATH="${PATH}:~/bin"
export GOPATH="~"
export EMAIL='nsajko@gmail.com'
export HISTCONTROL='ignoredups'

export XZ_DEFAULTS='-4 --extreme'
# -2 for when volatile memory is scarce
# gzip for when there's even less of it

links archlinux.org \
&& sudo pacman -Syu --noconfirm

[[ -f ~/.bashrc ]] && . ~/.bashrc
