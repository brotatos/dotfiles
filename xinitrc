#!/bin/sh
#
# ~/.xinitrc
#
# Executed by startx (run your window manager from here)
#

urxvtd -q -o -f &
python /home/bin/focus.py &
sleep 100s && dropboxd & 
redshift -m vidmode -l 36.8252:-119.7029 &
sh ~/.fehbg &
xset +fp /usr/share/fonts/local/ &
xset fp rehash
unclutter &
mpd &
ps -C mpdscribble &>/dev/null || mpdscribble &
xsetroot -cursor_name left_ptr &
xrdb -merge ~/.Xresources &

exec i3
