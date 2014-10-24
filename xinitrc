#!/bin/sh
#
# ~/.xinitrc
#
# Executed by startx (run your window manager from here)
#

sleep 300s && dropbox start &
redshift -l 37:-121 &
xbindkeys &
unclutter & > /dev/null
sh ~/.fehbg
xsetroot -cursor_name left_ptr
xrdb -merge ~/.Xresources
pulseaudio --start &
termite &
synclient PalmDetect=1

exec /usr/bin/i3
