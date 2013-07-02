#!/bin/bash
#
# ~/.xinitrc
#
# Executed by startx (run your window manager from here)
#

sleep 100s && dropbox start &
pulseaudio --start
redshift -l 35:-120 &
sh ~/.fehbg
xset +fp /usr/share/fonts/local/
xset fp rehash
unclutter & > /dev/null
mpd
ps -C mpdscribble &>/dev/null || mpdscribble
xsetroot -cursor_name left_ptr
xrdb -merge ~/.Xresources
urxvtd -q -f -o
chromium &

exec /usr/bin/i3
