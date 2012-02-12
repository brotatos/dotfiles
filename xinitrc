#!/bin/sh
#
# ~/.xinitrc
#
# Executed by startx (run your window manager from here)
#asdfasdf
pidof mpdscribble >& /dev/null
if [ $? -ne 0 ]; then
     mpdscribble &
 fi
sh ~/.fehbg &
redshift -l 36.8303:-119.6789 &
xsetroot -cursor_name left_ptr &
xset +fp /usr/share/fonts/local/ &
xrdb -merge ~/.Xresources &
unclutter -noevents &
sleep 300s && dropboxd & 

#exec ck-launch-session dbus-launch i3
exec ck-launch-session xmonad
#exec ck-launch-session dbus-launch awesome

#exec startxfce4
# exec gnome-session
# exec startkde
#exec ck-launch-session startxfce4
# ...or the Window Manager of your choice
