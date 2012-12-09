#!/bin/zsh

# general
alias l='ls --group-directories-first --color=auto -lh'
alias ls='ls --group-directories-first --color=auto'
alias grep='grep --colour=auto'

alias shutdown="sudo systemctl poweroff"
alias reboot="sudo systemctl reboot"

alias webcam="mplayer tv:// -tv driver=v4l2:width=640:height=480:device=/dev/video0 -fps 30 -vf screenshot"
alias omup="omup -s"

# arch
alias update="sudo pacman -Syu; meat -u"
alias sprunge="curl -F 'sprunge=<-' http://sprunge.us"
alias sickbeard="sudo systemctl start sickbeard.service"
alias sickbeards="sudo systemctl stop sickbeard.service"

# latex
alias ct="rm *.{aux,pdf}"

# wine
alias word="wine /home/robin/.wine/drive_c/Program\ Files/Microsoft\ Office/Office12/WINWORD.exe >/dev/null 2>&1 &"
alias excel="wine /home/robin/.wine/drive_c/Program\ Files/Microsoft\ Office/Office12/EXCEL.exe >/dev/null 2>&1 &"
alias powerpoint="wine /home/robin/.wine/drive_c/Program\ Files/Microsoft\ Office/Office12/POWERPNT.EXE >/dev/null 2>&1 &"

alias steam="/usr/bin/steam steam://open/games"
