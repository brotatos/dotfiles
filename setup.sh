#!/bin/bash

files=('bash_profile' 'bashrc' 'rtorrent.rc' 'xinitrc' 'Xresources' 'mpd'
'mplayer' 'ncmpcpp' 'beetsconfig' 'mpdscribble' 'i3' 'livestreamerrc' 'mutt'
'mpv' 'weechat'  'tmux.conf' 'bash_alias' 'i3status.conf' 'zsh' 'zshrc'
'vimperatorrc' 'zprofile' 'pentadactylrc' 'xbindkeysrc')

for i in "${files[@]}"; do
   rm -r ~/.$i
   ln -sf ~/github/dotfiles/$i ~/.$i
done

if [ ! -d ~/.config/termite ]; then
   mkdir -p ~/.config/termite
fi

if [ ! -d ~/.config/fish ]; then
   mkdir -p ~/.config/fish
fi

ln -sf "$PWD"/termite.cfg ~/.config/termite/config
ln -sf "$PWD"/config/config.fish ~/.config/fish/config.fish
