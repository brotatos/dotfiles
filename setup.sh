#!/bin/bash
# Sets up the appropriate symlinks for the config files located here
#ln -s source_file link_name

files=('bash_profile' 'bashrc' 'rtorrent.rc' 'vim' 'xinitrc'
'Xresources' 'mpd' 'mplayer' 'ncmpcpp' 'beetsconfig' 'mpdscribble' 'i3'
'livestreamerrc' 'mutt' 'weechat' 'vimrc' 'tmux.conf' 'vimperatorrc'
'bash_alias' 'i3status.conf' 'zshrc' 'zsh' 'zprofile' 'libao'
'pentadactylrc')
forced=true

for i in "${files[@]}"
do
    rm -r ~/.$i
    ln -s ~/github/dotfiles/$i ~/.$i
done
