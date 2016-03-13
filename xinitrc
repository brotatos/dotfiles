#!/bin/bash
#
# ~/.xinitrc
#
# Executed by startx (run your window manager from here)
#

sleep 10s && dropbox start &
pulseaudio --start
redshift -l 35:-120 &
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
termite &

exec /usr/bin/i3
