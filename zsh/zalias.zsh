#!/bin/zsh

# general
alias la='ls --group-directories-first --color=auto -lha'
alias l='ls --group-directories-first --color=auto -lh'
alias ls='ls --group-directories-first --color=auto'
alias grep='grep --colour=auto'

alias shutdown="sudo systemctl poweroff"
alias reboot="sudo systemctl reboot"
alias suspend="sudo systemctl suspend"

alias webcam="mplayer tv:// -tv driver=v4l2:width=640:height=480:device=/dev/video0 -fps 30 -vf screenshot"
alias omup="omup -s"

alias connecte="sudo netcfg -r home"
# arch
alias update="sudo pacman -Syu; meat -u"
alias sprunge="curl -F 'sprunge=<-' http://sprunge.us"
alias mpd="mpd; mpdscribble"
alias sickbeard="sudo systemctl start sickbeard.service"
alias sickbeards="sudo systemctl stop sickbeard.service"

# latex
alias ct="rm -f *.{aux,dvi,pdf,log}"

# wine
alias starcraft="wine /mnt/general/general/wine-starcraft/drive_c/Program\ Files/StarCraft\ II/StarCraft\ II.exe>/dev/null 2>&1 &"
#alias steam="wine /mnt/general/general/wine/drive_c/Program\ Files/Steam/Steam.exe >/dev/null 2>&1 &"
#alias steam="wine /mnt/general/general/wine/drive_c/Program\ Files/Steam/Steam.exe -no-dwrite>/dev/null 2>&1 &"

alias word="WINEPREFIX=/mnt/general/general/wine-office wine /mnt/general/general/wine-office/drive_c/Program\ Files/Microsoft\ Office/Office12/WINWORD.EXE>/dev/null 2>&1 &"
alias powerpoint="WWINEPREFIX=/mnt/general/general/wine-office wine /mnt/general/general/wine-office/drive_c/Program\ Files/Microsoft\ Office/Office12/POWERPNT.EXE>/dev/null 2>&1 &"
alias excel="wine /mnt/general/general/wine-office/drive_c/Program\ Files/Microsoft\ Office/Office12/EXCEL.EXE>/dev/null 2>&1 &"

# kvm
alias moonlightsucks="sudo qemu-kvm -hda /mnt/general/general/kvm/windows -m 6144 -smp 2 -vga std"

# etc
alias steamhack="/usr/bin/steam steam://open/games"
