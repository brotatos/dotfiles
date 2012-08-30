#!/bin/bash
#
# ~/.xinitrc
#
# Executed by startx (run your window manager from here)
#

#urxvtd -q -o -f
pulseaudio --start &
sleep 100s && dropbox start &
redshift -m vidmode -l 35.2828:-120.6596 
sh ~/.fehbg 
xset +fp /usr/share/fonts/local/
xset fp rehash
unclutter & > /dev/null
mpd 
ps -C mpdscribble &>/dev/null || mpdscribble
xsetroot -cursor_name left_ptr
#xrdb -merge ~/.Xresources

exec /usr/bin/i3
