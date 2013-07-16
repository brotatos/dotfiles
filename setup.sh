#!/bin/bash
# Sets up the appropriate symlinks for the config files located here
#ln -s source_file link_name

files=('bash_profile' 'bashrc' 'rtorrent.rc' 'vim' 'xinitrc' 'Xresources' 'mpd'
'mplayer' 'ncmpcpp'  'mpdscribble' 'i3' 'livestreamerrc' 'mutt'
'weechat' 'vimrc' 'tmux.conf' 'bash_alias' 'i3status.conf' 'zshrc'
'vimperatorrc' 'zprofile' 'pentadactylrc')

for i in "${files[@]}"; do
    rm -r ~/.$i
    ln -s ~/github/dotfiles/$i ~/.$i
done

mkdir -p ~/.config/termite
mkdir -p ~/.config/beets

ln -sf ~/github/dotfiles/termite.cfg ~/.config/termite/config
ln -sf ~/github/dotfiles/beetsconfig ~/.config/beets/config.yaml
