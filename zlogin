#!/usr/bin/env zsh
#tmuxMETA="$HOME/.config/tmux/meta.conf"
#case "$(tty)" in
#  /dev/tty1)
#    if ! tmux has-session -t xorg; then
#exec tmux start-server \; \
#        new-session -d -s xorg startx \; \
#        set-option -t xorg remain-on-exit off \; \
#        source "$tmuxMETA"
#    elif tmux has-session -t shell; then
#exec tmux attach-session -t shell
#    else
#tmux start-server \; \
#        source "$tmuxMETA" \; tmux attach-session -t shell
#    fi
#  ;;
#  /dev/tty[2-4])
#    if tmux has-session; then
#exec tmux attach-session
#    else
#exec tmux start-server \; \
#        source-file "$tmuxMETA" \; tmux attach-session -t shell
#    fi
#  ;;
#  /dev/tty[56])
#    echo "tmux broke huh"
#  ;;
#  *)
#    echo "the catchall is functional"
#  ;;
#esac
#
