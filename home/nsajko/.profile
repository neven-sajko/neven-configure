printf '%s\n' "Reading $HOME/.profile"

export PATH PLAN9 GOPATH EMAIL BROWSER MANPATH SHELL

PATH="$HOME/lib/bin:$HOME/overrideBin:$PATH:$HOME/bin"

#PLAN9="$HOME/p9p"
#PATH="$PATH:$PLAN9/bin"
MANPATH="$MANPATH:$PLAN9/man"

GOPATH="$HOME"
BROWSER=tb
EMAIL=nsajko@gmail.com

umask 077
. "$HOME/lib/configurationsCache.sh"
cd
umask 022

cd /tmp
gunzip -c < "$HOME/Downloads/susv4-2018.tgz" | tar x
cd

SHELL=/bin/rc

#exec /bin/rc -s #-l
