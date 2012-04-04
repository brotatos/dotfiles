#!/bin/sh
[ -z "$PS1" ] && return

PS1='[\u@\h \W]\$ '

export EDITOR="vim"
export BROWSER="chromium"

alias diff="colordiff"
alias ls='ls --color=auto'

alias shut="sudo systemctl poweroff" 
alias reboot="sudo systemctl reboot"

alias reconnect="sudo netcfg -r potato" 

alias pinstall="sudo pacman -S"
alias update="sudo pacman -Syu"
alias updatef="sudo pacman -Syyuu"
alias updatee="sudo pacman -Syu; pacaur -Syua"

