#!/bin/sh
if [[ -z $DISPLAY ]] && ! [[ -e /tmp/.X11-unix/X0 ]] && (( EUID )); then
      exec startx
fi

if [ -n "$DISPLAY" ]; then
         BROWSER=chromium
fi
