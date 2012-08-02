source ~/.zsh/zalias.zsh
source ~/.zsh/zstyles.zsh

export EDITOR=vim
export VISUAL=vim
export BROWSER=firefox
export GIT_EDITOR=$EDITOR
export SUDO_EDITOR=$EDITOR

autoload -Uz compinit
compinit
setopt completealiases

HISTFILE=~/.histfile
HISTSIZE=10000
SAVEHIST=10000
setopt appendhistory autocd beep extendedglob nomatch notify

bindkey -e

#prompt
autoload -U colors && colors
autoload -Uz compinit
compinit
autoload -U promptinit
promptinit
prompt redhat

#bindings
bindkey "\e[1~" beginning-of-line # Home
bindkey "\e[4~" end-of-line # End
#bindkey "\e[5~" beginning-of-history # PageUp
#bindkey "\e[6~" end-of-history # PageDown
bindkey "\e[2~" quoted-insert # Ins
bindkey "\e[3~" delete-char # Del
bindkey "\e[5C" forward-word
bindkey "\eOc" emacs-forward-word
bindkey "\e[5D" backward-word
bindkey "\eOd" emacs-backward-word
bindkey "\e\e[C" forward-word
bindkey "\e\e[D" backward-word
bindkey "\e[Z" reverse-menu-complete # Shift+Tab

#aur
source /usr/share/zsh/plugins/zsh-syntax-highlight/zsh-syntax-highlighting.zsh

