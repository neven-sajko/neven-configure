#
# ~/.bash_profile
#

export PATH=$PATH:~/go/bin
export GOPATH=~/go
export EMAIL='nsajko@gmail.com'

export XZ_DEFAULTS='-4 --extreme'
# -2 for when volatile memory is scarce
# gzip for when there's even less of it

links archlinux.org
sudo pacman -Syu --noconfirm

[[ -f ~/.bashrc ]] && . ~/.bashrc
