#!/bin/sh
[ -z "$PS1" ] && return

PS1='[\u@\h \W]\$ '

if [ -f ~/.bash_alias ]; then
    source ~/.bash_alias
fi
