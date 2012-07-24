# The following lines were added by compinstall

source ~/.zalias
export EDITOR=vim
export VISUAL=vim
export BROWSER=firefox
export GIT_EDITOR=$EDITOR
export SUDO_EDITOR=$EDITOR
zstyle ':completion:*' max-errors 4 numeric
zstyle ':completion:*' prompt '%n %M %d %#'
zstyle :compinstall filename '/home/robin/.zshrc'

#prompt
autoload -U colors && colors
autoload -Uz compinit
compinit
autoload -U promptinit
promptinit
prompt redhat

setopt completealiases
# End of lines added by compinstall
# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=5000
SAVEHIST=5000
setopt appendhistory autocd beep extendedglob nomatch notify
bindkey -e
# End of lines configured by zsh-newuser-install


#bindings
bindkey "\e[1~" beginning-of-line # Home
bindkey "\e[4~" end-of-line # End
bindkey "\e[5~" beginning-of-history # PageUp
bindkey "\e[6~" end-of-history # PageDown
bindkey "\e[2~" quoted-insert # Ins
bindkey "\e[3~" delete-char # Del
bindkey "\e[5C" forward-word
bindkey "\eOc" emacs-forward-word
bindkey "\e[5D" backward-word
bindkey "\eOd" emacs-backward-word
bindkey "\e\e[C" forward-word
bindkey "\e\e[D" backward-word
bindkey "\e[Z" reverse-menu-complete # Shift+Tab
# for rxvt
# bindkey "\e[7~" beginning-of-line # Home
# bindkey "\e[8~" end-of-line # End
