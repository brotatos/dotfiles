#!/bin/sh
#
# ~/.xinitrc
#
# Executed by startx (run your window manager from here)
#

sleep 200s && dropboxd & 
xflux -z 93611 &
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
