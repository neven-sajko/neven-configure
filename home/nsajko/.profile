printf '%s\n' "Reading $HOME/.profile"

export PATH PLAN9 GOPATH EMAIL BROWSER MANPATH XDG_CACHE_HOME

PATH="$HOME/lib/bin:$HOME/overrideBin:$PATH:$HOME/bin"

#PLAN9="$HOME/p9p"
#PATH="$PATH:$PLAN9/bin"
MANPATH="$MANPATH:$PLAN9/man"

GOPATH="$HOME"
BROWSER=tb
EMAIL=nsajko@gmail.com

umask 077

# Set cache directory.
XDG_CACHE_HOME=/tmp/freedesktopCache
mkdir "$XDG_CACHE_HOME"

# Make configuration directories for selected programs in temporary storage.
tmpFSConfs='transmission dconf gtk-3.0 mpv wireshark'
tmpHome=/tmp/conf
mkdir "$tmpHome"
cd "$tmpHome"
IFS=' '
mkdir $tmpFSConfs
cd
unset tmpFSConfs tmpHome

umask 022

cd /tmp
gunzip -c < "$HOME/Downloads/susv4-2018.tgz" | tar x
cd
