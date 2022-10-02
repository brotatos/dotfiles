#!/bin/bash
#
# ~/.xinitrc
#
# Executed by startx (run your window manager from here)
#

redshift -l "47.66916:-122.388690" &
sh ~/.fehbg
xset s off
xset s noblank
xset -dpms
xset +fp /usr/share/fonts/local/
xset fp rehash
unclutter & > /dev/null
mpd
nm-applet   2>&1  /dev/null   &
ps -C mpdscribble &>/dev/null || mpdscribble
xsetroot -cursor_name left_ptr
xrdb -merge ~/.Xresources
urxvtd -q -o -f
#sleep 10s && dropbox start &
xmodmap ~/.Xmodmap
opensnitch-ui &


exec /usr/bin/i3
#exec cinnamon-session
#exec i3-gnome
#exec cinnamon-session-i3
