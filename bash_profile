#!/bin/sh
if [[ -z $DISPLAY ]] && [[ $(tty) = /dev/tty1 ]]; then
  exec startx
fi

if [ -n "$DISPLAY" ]; then
         BROWSER=chromium
fi
