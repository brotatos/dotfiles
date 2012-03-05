#!/bin/sh
#
# ~/.xinitrc
#
# Executed by startx (run your window manager from here)
#

sh ~/.fehbg &
xset +fp /usr/share/fonts/local/ &

unclutter &
mpd &
pidof mpdscribble >& /dev/null
if [ $? -ne 0 ]; then
     mpdscribble &
 fi
xflux -z 93611 &
xsetroot -cursor_name left_ptr &
xrdb -merge ~/.Xresources &
sleep 300s && dropboxd & 

exec ck-launch-session dbus-launch i3
