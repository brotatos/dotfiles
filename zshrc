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
#PROMPT="%{$fg[red]%}%n%{$reset_color%}@%{$fg[blue]%}%m %{$fg[yellow]%}%1~ %{$reset_color%}%#"
#RPROMPT="[%{$fg[yellow]%}%?%{$reset_color%}]"

# aur
source /usr/share/zsh/plugins/zsh-syntax-highlight/zsh-syntax-highlighting.zsh

function zrcautoload() {
    emulate -L zsh
    setopt extended_glob
    local fdir ffile
    local -i ffound

    ffile=$1
    (( found = 0 ))
    for fdir in ${fpath} ; do
        [[ -e ${fdir}/${ffile} ]] && (( ffound = 1 ))
    done

    (( ffound == 0 )) && return 1
    if [[ $ZSH_VERSION == 3.1.<6-> || $ZSH_VERSION == <4->* ]] ; then
        autoload -U ${ffile} || return 1
    else
        autoload ${ffile} || return 1
    fi
    return 0
}

if zrcautoload colors && colors 2>/dev/null ; then
BLUE="%{${fg[blue]}%}"
    RED="%{${fg_bold[red]}%}"
    GREEN="%{${fg[green]}%}"
    CYAN="%{${fg[cyan]}%}"
    MAGENTA="%{${fg[magenta]}%}"
    YELLOW="%{${fg[yellow]}%}"
    WHITE="%{${fg[white]}%}"
    NO_COLOUR="%{${reset_color}%}"
else
BLUE=$'%{\e[1;34m%}'
    RED=$'%{\e[1;31m%}'
    GREEN=$'%{\e[1;32m%}'
    CYAN=$'%{\e[1;36m%}'
    WHITE=$'%{\e[1;37m%}'
    MAGENTA=$'%{\e[1;35m%}'
    YELLOW=$'%{\e[1;33m%}'
    NO_COLOUR=$'%{\e[0m%}'
fi

## {{{ set prompt
#  #precmd () { setopt promptsubst; [[ -o interactive ]] && jobs -l;
#  precmd () {
#      RPROMPT="%(?..:()% ${SCREENTITLE}"
#  }
#
#  preexec () {
#  # set screen window title if running in a screen
#  # get the name of the program currently running
#      if [[ "$TERM" == screen* ]]; then
#          local CMD=${1[(wr)^(*=*|sudo|ssh|-*)]}
#          echo -ne "\ek$CMD\e\\"
#      fi
#  # set the screen title to "zsh" when sitting at a command prompt:
#      if [[ "$TERM" == screen* ]]; then
#           SCREENTITLE=$'%{\ekzsh\e\\%}'
#      else
#           SCREENTITLE=''
#      fi
#  }
#
#  EXITCODE="%(?..%?%1v )"
#  local BLUE=%F{blue}
#  local RED=$fg[red]
#  local GREEN=$fg[green]
#  local CYAN=$fg[cyan]
##  local BLUE="%{[1;34m%}"
##  local RED="%{[1;31m%}"
##  local GREEN="%{[1;32m%}"
##  local CYAN="%{[1;36m%}"
##  local NO_COLOUR="%{[0m%}"
#  PS2='`%_> '       # secondary prompt, printed when the shell needs more information to complete a command.
#  PS3='?# '         # selection prompt used within a select loop.
#  PS4='+%N:%i:%_> ' # the execution trace prompt (setopt xtrace). default: '+%N:%i>'
#
## only if $GRMLPROMPT is set (e.g. via GRMLPROMPT='1') use the extended prompt
#  if ! [[ -z "$GRMLPROMPT" ]]; then
#    PROMPT="${RED}${EXITCODE}${CYAN}[%j running job(s)] ${GREEN}{history#%!} ${RED}%(3L.+.) ${BLUE}%* %D
#${BLUE}%n${NO_COLOUR}@%m %40<...<%B%~%b%<< %# "
#  else
#    if (( EUID != 0 )); then
#      PROMPT="${RED}${EXITCODE}${BLUE}%n${NO_COLOUR}@%m %40<...<%B%~%b%<< %# " # primary prompt string
#    else
#      PROMPT="${BLUE}${EXITCODE}${RED}%n${NO_COLOUR}@%m %40<...<%B%~%b%<< %# " # primary prompt string
#    fi
#  fi
## }}}
#
#

setprompt () {
    # load some modules
    autoload -U colors zsh/terminfo # Used in the colour alias below
    colors
    setopt prompt_subst

    # make some aliases for the colours: (coud use normal escap.seq's too)
    for color in RED GREEN YELLOW BLUE MAGENTA CYAN WHITE; do
    eval PR_$color='%{$fg[${(L)color}]%}'
    done
    PR_NO_COLOR="%{$terminfo[sgr0]%}"

    # Check the UID
    if [[ $UID -ge 1000 ]]; then # normal user
    eval PR_USER='${PR_GREEN}%n${PR_NO_COLOR}'
    eval PR_USER_OP='${PR_GREEN}%#${PR_NO_COLOR}'
    elif [[ $UID -eq 0 ]]; then # root
    eval PR_USER='${PR_RED}%n${PR_NO_COLOR}'
    eval PR_USER_OP='${PR_RED}%#${PR_NO_COLOR}'
    fi      

    # Check if we are on SSH or not
    if [[ -n "$SSH_CLIENT" || -n "$SSH2_CLIENT" ]]; then
    eval PR_HOST='${PR_YELLOW}%M${PR_NO_COLOR}' #SSH
    else
    eval PR_HOST='${PR_GREEN}%M${PR_NO_COLOR}' # no SSH
    fi
    # set the prompt
    PS1=$'${PR_CYAN}${PR_USER}${PR_CYAN}@${PR_HOST}${PR_CYAN}\ ${PR_BLUE}\ %1~\ ${PR_CYAN}${PR_USER_OP} '
    PS2=$'%_>'
}
setprompt
