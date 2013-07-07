#!/bin/bash
# Sets up the appropriate symlinks for the config files located here
#ln -s source_file link_name

files=('bash_profile' 'bashrc' 'rtorrent.rc' 'vim' 'xinitrc'
'Xresources' 'mpd' 'mplayer' 'ncmpcpp' 'beetsconfig' 'mpdscribble' 'i3'
'livestreamerrc' 'mutt' 'weechat' 'vimrc' 'tmux.conf' 'bash_alias'
'i3status.conf' 'zsh' 'zshrc' 'vimperatorrc' 'zprofile' 'pentadactylrc'
'xbindkeysrc')

for i in "${files[@]}"; do
    rm -r ~/.$i
    ln -s ~/github/dotfiles/$i ~/.$i
done

if [ ! -d ~/.config/termite ]; then
   mkdir -p ~/.config/termite
fi

ln -s ~/github/dotfiles/termite.cfg ~/.config/termite/config
