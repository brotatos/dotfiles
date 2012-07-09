#!/bin/sh
if [[ -z $DISPLAY ]] && [[ $(tty) = /dev/tty1 ]]; then
  startx
  logout
fi

if [ -n "$DISPLAY" ]; then
         BROWSER=chromium
fi

source ~/.bashrc
