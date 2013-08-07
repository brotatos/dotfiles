fpath=(~/.zsh/completion $fpath)

for f in $HOME/.zsh/*.zsh(on); do
    . $f
done
export EDITOR=vim
export VISUAL=vim
export BROWSER=chromium
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

HISTFILE=~/.histfile
HISTSIZE=10000
SAVEHIST=10000
setopt appendhistory autocd beep extendedglob nomatch notify

# prompt
autoload -U colors && colors
autoload -U promptinit
promptinit

# aur
source /usr/share/zsh/plugins/zsh-syntax-highlight/zsh-syntax-highlighting.zsh

# envoy
envoy -t ssh-agent cominor csc github id_rsa
source <(envoy -p)

function setup () {
   # Turn off laptop monitor and just use external.
   xrandr --output HDMI1 --auto --right-of LVDS1
   xrandr --output LVDS1 --off
   sh ~/.fehbg
   if [[ "$1" == "work" ]]; then
      sudo ifconfig eth0 up
      sudo dhcpcd eth0
      sudo dhcpcd eth0
   else
      sudo netctl start "$1"
   fi
}

function squash () {
   git rebase -i HEAD~"$1"
}

zstyle ':completion:*' menu select=2
