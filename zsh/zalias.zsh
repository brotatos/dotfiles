#!/bin/zsh
alias ls='ls --color=auto'
alias grep='grep --colour=auto'

alias gc="ping -c 3 google.com"

alias reconnect="sudo netcfg -r home" 
alias shutdown="sudo systemctl poweroff"
alias reboot="sudo systemctl reboot"

alias pinstall="sudo pacman -S"
alias update="sudo pacman -Syu"
alias updatef="sudo pacman -Syyuu"
alias updatee="sudo pacman -Syu; cower -uv"

alias sprunge=" curl -F 'sprunge=<-' http://sprunge.us"

alias starcraft="wine /home/robin/.wine/drive_c/Program\ Files/StarCraft\ II/StarCraft\ II.exe>/dev/null 2>&1 &"
alias steam="wine /home/robin/.wine-steam/drive_c/Program\ Files/Steam/Steam.exe>/dev/null 2>&1 &"

alias webcam="mplayer tv:// -tv driver=v4l2:width=640:height=480:device=/dev/video0 -fps 30 -vf screenshot"
alias omup="omup -s"

alias moonlightsucks="sudo qemu-kvm -hda ~/kvm/windows -m 6144 -smp 2 -vga std"

#~/github/bin/
alias screenshot="~/github/scripts/screenshot"
alias imgur="~/github/scripts/imgur"

