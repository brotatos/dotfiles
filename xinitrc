#!/bin/bash
#
# ~/.xinitrc
#
# Executed by startx (run your window manager from here)
#

sleep 100s && dropbox start &
xflux -z 93405 &
sh ~/.fehbg
xset +fp /usr/share/fonts/local/
xset fp rehash
unclutter & > /dev/null
mpd
ps -C mpdscribble &>/dev/null || mpdscribble
xsetroot -cursor_name left_ptr
xrdb -merge ~/.Xresources
urxvtd -q -o -f

exec /usr/bin/i3
