#!/bin/sh
[ -z "$PS1" ] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '
alias shut="sudo shutdown -h now"
alias reconnect="sudo netcfg -r potato" 

alias install="sudo pacman -S"
alias update="sudo pacman -Syu"
alias updatef="sudo pacman -Syyuu"
alias updatee="sudo pacman -Syu; cower -udd"

alias reboot="sudo reboot"

