# general
alias g="git"
alias l='ls --group-directories-first --color=auto'
alias la='ls --group-directories-first --color=auto -lash'
alias ls='ls --group-directories-first --color=auto'
alias more='/usr/bin/less'
alias grep='grep --colour=auto'
alias ...='cd ..'

alias shutdown="systemctl poweroff"
alias reboot="systemctl reboot"
alias suspend="systemctl suspend"

alias webcam="mplayer tv:// -tv driver=v4l2:width=640:height=480:device=/dev/video0 -fps 30 -vf screenshot"
alias omup="omup -s"

alias reconnect="sudo netctl restore"
alias gc="ping -c 3 google.com"

alias mplayer="mpv"

# arch
alias pacman="pacman --color=auto"
alias update="sudo pacman --color=auto -Syu; meat -u"
alias sprunge="curl -F 'sprunge=<-' http://sprunge.us"
alias sickbeard="sudo systemctl start sickbeard.service"
alias sickbeards="sudo systemctl stop sickbeard.service"

# python
alias pysource="source venv/bin/activate"

# poly
alias gx="cd /home/robin/xilinx/14.6/ISE_DS/ISE/bin/lin64"
alias ise="source /home/robin/xilinx/14.6/ISE_DS; /home/robin/xilinx/14.6/ISE_DS/ISE/bin/lin64/ise"
