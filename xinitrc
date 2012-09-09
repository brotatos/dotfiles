#!/bin/sh
#
# ~/.xinitrc
#
# Executed by startx (run your window manager from here)
#

urxvtd -q -o -f
sleep 100s && dropbox start &
xflux -z 93405 &
xset +fp /usr/share/fonts/local/
xset fp rehash
unclutter & > /dev/null
xsetroot -cursor_name left_ptr
xrdb -merge ~/.Xresources
pulseaudio --start &

exec /usr/bin/i3
