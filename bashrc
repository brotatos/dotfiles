#!/bin/sh
[ -z "$PS1" ] && return

PS1='[\u@\h \W]\$ '

export EDITOR="vim"
export BROWSER="chromium"
