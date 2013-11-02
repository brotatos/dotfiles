#!/bin/sh
#[ -z "$PS1" ] && return
# Shell Variable Configuration
RED="\[\033[31m\]"
GRE="\[\033[32m\]"
YEL="\[\033[33m\]"
BLU="\[\033[34m\]"
PUR="\[\033[35m\]"
WHI="\[\033[37m\]"
NUL="\[\033[0m\]"

export PS1="${BLU}\u${WHI}@${PUR}\H ${GRE}\t ${PUR}\W${NUL} > "
export SHELL=/bin/bash
export BROWSER=chromium

#PS1='[\u@\h \W ]\$ '

export EDITOR="/usr/bin/vim"

if [ -f ~/.bash_alias ]; then
    source ~/.bash_alias
fi

