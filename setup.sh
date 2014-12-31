#!/bin/bash
# Sets up the appropriate symlinks for the config files located here
#ln -s source_file link_name

files=('bash_profile' 'bashrc' 'rtorrent.rc' 'xinitrc' 'Xresources' 'mpd'
'mplayer' 'ncmpcpp'  'mpdscribble' 'i3' 'livestreamerrc' 'mutt' 'weechat'
'tmux.conf' 'bash_alias' 'i3status.conf' 'zshrc' 'vimperatorrc' 'zprofile'
'pentadactylrc' 'mpv')

for i in "${files[@]}"; do
    rm -rf "~/.$i"
    ln -sf "~/github/dotfiles/$i" "~/.$i"
done

mkdir -p ~/.config/termite
mkdir -p ~/.config/beets
mkdir -p ~/.config/fish

ln -sf "$PWD"/termite.cfg ~/.config/termite/config
ln -sf "$PWD"/beetsconfig ~/.config/beets/config.yaml
ln -sf "$PWD"/config.fish ~/.config/fish/config.fish
