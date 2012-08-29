for f in $HOME/.zsh/*.zsh(on); do
    . $f
done

export EDITOR=vim
export VISUAL=vim
export BROWSER=aurora
export GIT_EDITOR=$EDITOR
export SUDO_EDITOR=$EDITOR

autoload -Uz compinit
compinit
setopt completealiases
setopt correct hash_list_all

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
#prompt redhat

# aur
source /usr/share/zsh/plugins/zsh-syntax-highlight/zsh-syntax-highlighting.zsh

# {{{ set prompt
  #precmd () { setopt promptsubst; [[ -o interactive ]] && jobs -l;
  precmd () {
      RPROMPT="%(?..:()% ${SCREENTITLE}"
  }

  preexec () {
  # set screen window title if running in a screen
  # get the name of the program currently running
      if [[ "$TERM" == screen* ]]; then
          local CMD=${1[(wr)^(*=*|sudo|ssh|-*)]}
          echo -ne "\ek$CMD\e\\"
      fi
  # set the screen title to "zsh" when sitting at a command prompt:
      if [[ "$TERM" == screen* ]]; then
           SCREENTITLE=$'%{\ekzsh\e\\%}'
      else
           SCREENTITLE=''
      fi
  }

  EXITCODE="%(?..%?%1v )"
  local BLUE=%F{blue}
  local RED=$fg[red]
  local GREEN=$fg[green]
  local CYAN=$fg[cyan]
#  local BLUE="%{[1;34m%}"
#  local RED="%{[1;31m%}"
#  local GREEN="%{[1;32m%}"
#  local CYAN="%{[1;36m%}"
#  local NO_COLOUR="%{[0m%}"
  PS2='`%_> '       # secondary prompt, printed when the shell needs more information to complete a command.
  PS3='?# '         # selection prompt used within a select loop.
  PS4='+%N:%i:%_> ' # the execution trace prompt (setopt xtrace). default: '+%N:%i>'

# only if $GRMLPROMPT is set (e.g. via GRMLPROMPT='1') use the extended prompt
  if ! [[ -z "$GRMLPROMPT" ]]; then
    PROMPT="${RED}${EXITCODE}${CYAN}[%j running job(s)] ${GREEN}{history#%!} ${RED}%(3L.+.) ${BLUE}%* %D
${BLUE}%n${NO_COLOUR}@%m %40<...<%B%~%b%<< %# "
  else
    if (( EUID != 0 )); then
      PROMPT="${RED}${EXITCODE}${BLUE}%n${NO_COLOUR}@%m %40<...<%B%~%b%<< %# " # primary prompt string
    else
      PROMPT="${BLUE}${EXITCODE}${RED}%n${NO_COLOUR}@%m %40<...<%B%~%b%<< %# " # primary prompt string
    fi
  fi
# }}}


