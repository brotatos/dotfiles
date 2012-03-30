#!/bin/sh
[ -z "$PS1" ] && return

#PS1='[\u@\h \W]\$ '
PS1='\[\e[0;32m\]\h\[\e[m\] \[\e[1;34m\]\W\[\e[m\] \[\e[1;32m\]\$\[\e[m\] '  #\[\e[m\]\[\e[1;37m\]

export EDITOR="vim"
export BROWSER="chromium"

alias weechat="weechat-curses"
alias diff="colordiff"
alias ls='ls --color=auto'

alias shut="sudo systemctl poweroff" 
alias reboot="sudo systemctl reboot"

alias reconnect="sudo netcfg -r potato" 

alias pinstall="sudo pacman -S"
alias update="sudo pacman -Syu"
alias updatef="sudo pacman -Syyuu"
alias updatee="sudo pacman -Syu; pacaur -Syua"

