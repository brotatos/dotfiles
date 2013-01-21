for f in $HOME/.zsh/*.zsh(on); do
    . $f
done

export EDITOR=vim
export VISUAL=vim
export BROWSER=aurora
export GIT_EDITOR=$EDITOR
export SUDO_EDITOR=$EDITOR

# modules
zmodload zsh/complist
zmodload zsh/complete

autoload -Uz compinit
compinit
setopt autocd
setopt pathdirs
setopt notify
setopt completealiases
setopt correct hash_list_all
unsetopt braceccl
setopt extendedglob

# prompt
autoload -U colors && colors
autoload -Uz compinit
compinit
autoload -U promptinit
promptinit

# aur
source /usr/share/zsh/plugins/zsh-syntax-highlight/zsh-syntax-highlighting.zsh
