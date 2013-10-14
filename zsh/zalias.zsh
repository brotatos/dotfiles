#!/bin/zsh

#thinkpad
alias tg="/usr/bin/touchpadtoggle"

# general
alias i3lock="i3lock -c 000000"
alias l='ls --group-directories-first --color=auto'
alias ls='ls --group-directories-first --color=auto'
alias more='/usr/bin/less'
alias grep='grep --colour=auto'
alias ...='cd ..'
alias fixr='xrandr --output LVDS1 --mode 1600x900'

alias shutdown="systemctl poweroff"
alias reboot="systemctl reboot"
alias suspend="systemctl suspend"

alias webcam="mplayer tv:// -tv driver=v4l2:width=640:height=480:device=/dev/video0 -fps 30 -vf screenshot"
alias omup="omup -s"

alias reconnect="sudo netctl restore"
alias gc="ping -c 3 google.com"

# arch
alias pacman="pacman --color=auto"
alias update="sudo pacman --color=auto -Syu; meat -u"

alias sprunge="curl -F 'sprunge=<-' http://sprunge.us"
alias sickbeard="sudo systemctl start sickbeard.service"
alias sickbeards="sudo systemctl stop sickbeard.service"

# school
alias print="lpr"
alias home="sudo netctl start home"
alias smw="sudo netctl start smw"
alias smw2="sudo netctl start smw2"
alias cplan="sudo netctl start cplan"

# git
alias g="git"
alias f="feature"
alias h="hotfix"

# poly
alias gx="cd /home/robin/xilinx/14.6/ISE_DS/ISE/bin/lin64"
alias ise="source /home/robin/xilinx/14.6/ISE_DS; /home/robin/xilinx/14.6/ISE_DS/ISE/bin/lin64/ise"

# python
alias pysource="source venv/bin/activate"
