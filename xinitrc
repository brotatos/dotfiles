#!/bin/bash
#
# ~/.xinitrc
#
# Executed by startx (run your window manager from here)
#

xrandr --output DVI-D-0 --auto
xrandr --output DVI-D-0 --left-of DP-0
xrandr --output DVI-D-0 --scale 1.5x1.5 --pos 0x0
xrandr --output DP-0 --primary --pos 3840x0
pulseaudio --start
redshift -l "47.66916:-122.388690" &
sh ~/.fehbg
xset s off
xset s noblank
xset -dpms
xset +fp /usr/share/fonts/local/
xset fp rehash
unclutter & > /dev/null
mpd
nm-applet   2>&1  /dev/null   &
ps -C mpdscribble &>/dev/null || mpdscribble
xsetroot -cursor_name left_ptr
xrdb -merge ~/.Xresources
urxvtd -q -o -f
sleep 10s && dropbox start &
xmodmap ~/.Xmodmap
#google-chrome-stable &
#urxvtc &

exec /usr/bin/i3
