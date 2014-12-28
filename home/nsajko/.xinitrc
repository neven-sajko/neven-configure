#! /bin/sh

for f in /etc/X11/xinit/xinitrc.d/*; do
  [ -x "$f" ] && . "$f"
done
unset f

# Enable this for non-reparenting window managers
export _JAVA_AWT_WM_NONREPARENTING=1

# Put this to x server options actually
# man xserver /-ardelay
# man startx
xset r rate 230 25

setxkbmap hr

#exec dwm
exec rio
