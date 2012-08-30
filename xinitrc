#!/bin/sh
#
# ~/.xinitrc
#
# Executed by startx (run your window manager from here)
#

urxvtd -q -o -f 
sleep 100s && dropbox start & 
redshift -m vidmode -l 36.8252:-119.7029&
#sh ~/.fehbg 
xset +fp /usr/share/fonts/local/ 
xset fp rehash
unclutter & > /dev/null
#mpd 
#ps -C mpdscribble &>/dev/null || mpdscribble &
xsetroot -cursor_name left_ptr 
xrdb -merge ~/.Xresources 
pulseaudio --start &

exec /usr/bin/i3
