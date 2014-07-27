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
#mpd
#ps -C mpdscribble &>/dev/null || mpdscribble
sh ~/.fehbg
xsetroot -cursor_name left_ptr
xrdb -merge ~/.Xresources
pulseaudio --start &
# Automatically disable the touchpad when typing. Set the idle time to .5
# seconds.
#syndaemon -k -i .5 -d
#/usr/bin/touchpadtoggle
urxvtd -q -o -f
urxvt &

exec /usr/bin/i3
