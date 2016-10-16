#!/bin/sh
# ~/.xinitrc
urxvtd -q -o -f&
xbindkeys&
lxpolkit&
nm-applet --sm-disable&
synclient TouchpadOff=1
sudo clicky-sounds&
while true; do new_mail_sound.sh ;sleep 1;done&
#mplayer /home/wolf/Templates/ates/Digital_Rain/Digital_Rain.wmv -rootwin -nosound -loop 20000

# source xinitc.d scripts
if [ -d /etc/X11/xinit/xinitrc.d ]; then
  for f in /etc/X11/xinit/xinitrc.d/*; do
    [ -x "$f" ] && . "$f"
 
 done
  unset f
fi

# load .Xresources
[[ -f $HOME/.Xresources ]] && xrdb -merge $HOME/.Xresources

# remap caps lock to control, remap right alt to window key
setxkbmap -option ctrl:nocaps
xmodmap -e "keycode 108 = Super_L"
xmodmap -e "remove mod1 = Super_L"

# add font paths
xset fp default
[[ -d /usr/share/fonts/TTF ]] && xset +fp /usr/share/fonts/TTF
[[ -d /usr/share/fonts/local ]] && xset +fp /usr/share/fonts/local
[[ -d /usr/share/fonts/noto ]] && xset +fp /usr/share/fonts/noto
[[ -d /usr/share/fonts/encodings ]] && xset +fp /usr/share/fonts/encodings
[[ -d /usr/share/fonts/OTF ]] && xset +fp /usr/share/fonts/OTF
[[ -d $HOME/.local/share/fonts ]] && xset +fp $HOME/.local/share/fonts
[[ -d /usr/share/fonts/misc ]] && xset +fp /usr/share/fonts/misc
xset fp rehash

xset -dpms
xset s off
#xset dpms 3600 3600 3600
setterm -blank 0
# increase mouse acceleration
xset m 3
xset r rate 300 45
nitrogen --set-centered $HOME/Pictures/wolf1280.jpg
# set WM to a name with Java recognises
wmname DWM
# start WM
exec $HOME/bin/dwm-start
