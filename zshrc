fpath=(~/.zsh/completion $fpath)
. /usr/lib/z.sh

for f in $HOME/.zsh/*.zsh(on); do
    . $f
done

export CUPS_SERVER=localhost
export EDITOR=vim
export VISUAL=vim
export BROWSER=firefox
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
envoy -t ssh-agent cominor csc
source <(envoy -p)

function setup () {
   # Turn off laptop monitor and just use external.
   xrandr --output DVI1 --auto --right-of LVDS1
   #xrandr --output LVDS1 --off
   sh ~/.fehbg
   if [[ "$1" == "work" ]]; then
      sudo ip link set eth0 up
      sudo dhcpcd eth0
      sudo dhcpcd eth0
      #/usr/bin/touchpadtoggle
   else
      sudo netctl start "$1"
   fi
}

function squash () {
   git rebase -i HEAD~"$1"
}

zstyle ':completion:*' menu select=2

# Set custom prompt
setopt PROMPT_SUBST
autoload -U promptinit
promptinit
