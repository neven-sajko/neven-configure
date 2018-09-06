#! /bin/sh

for f in /etc/X11/xinit/xinitrc.d/*; do
  [ -x "$f" ] && . "$f"
done
unset f

# Enable this for non-reparenting window managers
export _JAVA_AWT_WM_NONREPARENTING=1

#xinput set-prop 'SynPS/2 Synaptics TouchPad' 'Device Enabled' 0

# Put this to x server options actually
# man xserver /-ardelay
# man startx
xset r rate 230 25

# Logitech wireless mouse constant pointer deceleration
#  xinput
#  xinput list-props 'pointer:Logitech USB Receiver'
#xinput set-prop 'pointer:Logitech USB Receiver' 'Device Accel Constant Deceleration' 4
#
#mouse pointer acceleration device non-specific
#xset m 3 3

setxkbmap hr

#sleep 0.2 && exec st -e top&

#randrx s
xrandr --output HDMI1 --mode 1920x1200 --pos 0x0 --rotate normal --output LVDS1 --off

exec dwm
#exec rio


#sleep 0.1

#st -e top&

#xrandr --output HDMI1 --mode 1920x1200 --pos 0x0 --rotate normal --output LVDS1 --off --output VIRTUAL1 --off --output DP1 --off --output VGA1 --off
