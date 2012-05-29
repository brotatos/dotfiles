#!/bin/sh
export VDPAU_NVIDIA_NO_OVERLAY=1
[ -z "$PS1" ] && return

PS1='[\u@\h \W]\$ '

export EDITOR="vim"
export BROWSER="chromium"

alias diff="colordiff"
alias ls='ls --color=auto'

alias reconnect="sudo netcfg -r potato" 

alias pinstall="sudo pacman -S"
alias update="sudo pacman -Syu"
alias updatef="sudo pacman -Syyuu"
alias updatee="sudo pacman -Syu; pacaur -Syua"

alias sprunge=" curl -F 'sprunge=<-' http://sprunge.us"

alias suspend="sudo pm-suspend"
