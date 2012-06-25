#!/bin/sh
[ -z "$PS1" ] && return

PS1='[\u@\h \W]\$ '

export EDITOR="vim"
export BROWSER="chromium"

alias diff="colordiff"
alias ls='ls --color=auto'

alias reconnect="sudo netcfg -r home" 
alias shutdown="sudo shutdown -h now"
alias reboot="sudo shutdown -r now"

alias pinstall="sudo pacman -S"
alias update="sudo pacman -Syu"
alias updatef="sudo pacman -Syyuu"
alias updatee="sudo pacman -Syu; cower -udd"

alias sprunge=" curl -F 'sprunge=<-' http://sprunge.us"

alias suspend="sudo pm-suspend"
