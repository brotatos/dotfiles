#!/bin/sh
[ -z "$PS1" ] && return

PS1='[\u@\h \W ]\$ '

export EDITOR="/usr/bin/vim"
export BROWSER="/usr/bin/chromium"

if [ -f ~/.bash_alias ]; then
    source ~/.bash_alias
fi

