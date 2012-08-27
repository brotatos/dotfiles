for f in $HOME/.zsh/*.zsh(on); do
    . $f
done

export EDITOR=vim
export VISUAL=vim
export BROWSER=chromium
export GIT_EDITOR=$EDITOR
export SUDO_EDITOR=$EDITOR

autoload -Uz compinit
compinit
setopt completealiases

HISTFILE=~/.histfile
HISTSIZE=10000
SAVEHIST=10000
setopt appendhistory autocd beep extendedglob nomatch notify

# prompt
autoload -U colors && colors
autoload -Uz compinit
compinit
autoload -U promptinit
promptinit
prompt redhat

# aur
source /usr/share/zsh/plugins/zsh-syntax-highlight/zsh-syntax-highlighting.zsh
