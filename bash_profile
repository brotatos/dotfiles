##!/bin/sh
#[[ -f $HOME/.bashrc ]] && . $HOME/.bashrc

if [ -z "$SSH_AUTH_SOCK" ] ; then
   eval `ssh-agent -s`
   ssh-add
fi
