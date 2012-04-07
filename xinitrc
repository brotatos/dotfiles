#!/bin/sh
#
# ~/.xinitrc
#
# Executed by startx (run your window manager from here)
#

urxvtd -q -o -f &
sleep 200s && dropboxd & 
redshift -m vidmode -l 36.8252:-119.7029 &
sh ~/.fehbg &
xset +fp /usr/share/fonts/local/ &

unclutter &
mpd &
pidof mpdscribble >& /dev/null
if [ $? -ne 0 ]; then
     mpdscribble &
 fi
xsetroot -cursor_name left_ptr &
xrdb -merge ~/.Xresources &

exec ck-launch-session dbus-launch i3
