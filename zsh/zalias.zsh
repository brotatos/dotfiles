#!/bin/zsh

#thinkpad
alias tg="/usr/bin/touchpadtoggle"

# general
alias l='ls --group-directories-first --color=auto'
alias ls='ls --group-directories-first --color=auto'
alias more='/usr/bin/less'
alias grep='grep --colour=auto'
alias ...='cd ..'
alias fixr='xrandr --output LVDS1 --mode 1600x900'
alias mosh='mosh --predict=never'

alias shutdown="systemctl poweroff"
alias reboot="systemctl reboot"
alias suspend="systemctl suspend"

alias webcam="mplayer tv:// -tv driver=v4l2:width=640:height=480:device=/dev/video0 -fps 30 -vf screenshot"
alias omup="omup -s"

alias reconnect="sudo netctl restore"
alias gc="ping -c 3 google.com"

# arch
alias pacman="pacman --color=always"
alias update="sudo pacman --color=always -Syu; meat -u"
alias sprunge="curl -F 'sprunge=<-' http://sprunge.us"
alias sickbeard="sudo systemctl start sickbeard.service"
alias sickbeards="sudo systemctl stop sickbeard.service"

# school
alias home="sudo netctl start home"
alias smw="sudo netctl start smw"
alias cplan="sudo netctl start cplan"

# web
alias htmlnow="rst2html5 --bootstrap-css --pretty-print-code --jquery --embed-content $1 > file.html"

# git
alias g="git"
alias f="feature"
alias h="hotfix"
