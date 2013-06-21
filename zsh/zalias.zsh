#!/bin/zsh

#thinkpad
alias tg="/usr/bin/touchpadtoggle"

# general
alias g="git"
alias l='ls --group-directories-first --color=auto -lh'
alias ls='ls --group-directories-first --color=auto'
alias more='/usr/bin/less'
alias grep='grep --colour=auto'
alias ...='cd ..'
alias fixr='xrandr --output LVDS1 --mode 1600x900'

alias shutdown="systemctl poweroff"
alias reboot="systemctl reboot"
alias suspend="systemctl suspend"

alias testw="sudo mplayer tv://"
alias webcam="mplayer tv:// -tv driver=v4l2:width=640:height=480:device=/dev/video0 -fps 30 -vf screenshot"
alias omup="omup -s"

alias reconnect="sudo netctl restore"
alias gc="ping -c 3 google.com"

# arch
alias update="sudo pacman -Syu; meat -u"
alias sprunge="curl -F 'sprunge=<-' http://sprunge.us"
alias sickbeard="sudo systemctl start sickbeard.service"
alias sickbeards="sudo systemctl stop sickbeard.service"

# school
alias home="sudo netctl start home"
alias smw="sudo netctl start smw"
alias cplan="sudo netctl start cplan"

