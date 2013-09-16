#!/bin/sh
#
# ~/.xinitrc
#
# Executed by startx (run your window manager from here)
#

sleep 300s && dropbox start &
redshift -l 35:-120 &
xbindkeys &
#xset +fp /usr/share/fonts/local/
#xset fp rehash
unclutter & > /dev/null
#mpd
#ps -C mpdscribble &>/dev/null || mpdscribble
sh ~/.fehbg
xsetroot -cursor_name left_ptr
xrdb -merge ~/.Xresources
pulseaudio --start &
chromium &
termite &

exec /usr/bin/i3
