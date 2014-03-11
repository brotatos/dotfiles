#!/bin/bash
# Sets up the appropriate symlinks for the config files located here
#ln -s source_file link_name

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

ln -sf ~/github/dotfiles/termite.cfg ~/.config/termite/config
ln -sf ~/github/dotfiles/config/config.fish ~/.config/fish/config.fish
