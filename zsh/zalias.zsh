#!/bin/zsh

# general
alias l='ls --group-directories-first --color=auto -lh'
alias ls='ls --group-directories-first --color=auto'
alias grep='grep --colour=auto'
alias ...='cd ..'

alias shutdown="systemctl poweroff"
alias reboot="systemctl reboot"
alias suspend="sysmtectl suspend"

alias webcam="mplayer tv:// -tv driver=v4l2:width=640:height=480:device=/dev/video0 -fps 30 -vf screenshot"
alias omup="omup -s"

alias reconnect="sudo netcfg -R wlan0"

# arch
alias update="sudo pacman -Syu; meat -u"
alias sprunge="curl -F 'sprunge=<-' http://sprunge.us"
alias sickbeard="sudo systemctl start sickbeard.service"
alias sickbeards="sudo systemctl stop sickbeard.service"

# school
alias secure="sudo netcfg wlan0-SecureMustangWireless"
alias regular="sudo netcfg wlan0-GuestMustangWireless"
alias home="sudo netcfg wlan0-ATT544"
