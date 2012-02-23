#!/bin/sh
[ -z "$PS1" ] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '
alias shut="sudo shutdown -h now"
alias reconnect="sudo netcfg -r potato" 
