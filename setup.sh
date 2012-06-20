#!/bin/bash
# Sets up the appropriate symlinks for the config files located here
#ln -s source_file link_name

files=('bash_profile' 'bashrc' 'rtorrent.rc' 'vim' 'xinitrc' 'xmobarrc' 'xmonad' 'Xresources' 'mpd' 'mplayer' 'ncmpcpp' 'beetsconfig' 'mpdscribble' 'i3' 'livestreamerrc' 'mutt' 'weechat' 'vimrc' 'tmux.conf' 'pentadactylrc') 
forced=true

# itarate over all arguments
#for i in "$@"
#do
# if [ $i = "f" ]; then
# forced=true
# fi
#done
#
#for i in "${files[@]}"
#do
# #if $forced ; then
# # rm ~/.$i
# #fi
# cp -r ~/.$i ~/.dotfiles/$i
#done
for i in "${files[@]}"
do
    rm -r ~/.$i
    ln -s ~/.dotfiles/$i ~/.$i
done
