#!/bin/zsh

# general
alias ls='ls --group-directories-first --color=auto'
alias grep='grep --colour=auto'

alias shutdown="sudo systemctl poweroff"
alias reboot="sudo systemctl reboot"
alias suspend="sudo swapon /dev/sdb2; sudo systemctl suspend"

alias webcam="mplayer tv:// -tv driver=v4l2:width=640:height=480:device=/dev/video0 -fps 30 -vf screenshot"
alias omup="omup -s"

# arch
alias update="sudo pacman -Syu; meat -u"
alias sprunge="curl -F 'sprunge=<-' http://sprunge.us"
alias mpd="mpd; mpdscribble"
alias sickbeard="sudo systemctl start sickbeard.service"
alias sickbeards="sudo systemctl stop sickbeard.service"

# latex
alias ct="rm *.{aux,pdf}"

# steam
alias starcraft="wine /mnt/general/general/wine-starcraft/drive_c/Program\ Files\ \(x86\)/StarCraft\ II/StarCraft\ II.exe>/dev/null 2>&1 &"
#alias steam="wine /mnt/general/general/wine/drive_c/Program\ Files/Steam/Steam.exe >/dev/null 2>&1 &"
alias steam="wine /mnt/general/general/wine/drive_c/Program\ Files/Steam/Steam.exe -no-dwrite>/dev/null 2>&1 &"

# kvm
alias moonlightsucks="sudo qemu-kvm -hda /mnt/general/general/kvm/windows -m 6144 -smp 2 -vga std"
