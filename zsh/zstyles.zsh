unsetopt menu_complete   # do not autoselect the first completion entry
unsetopt flowcontrol

setopt auto_menu         # show completion menu on succesive tab press
setopt complete_in_word
setopt always_to_end

_force_rehash() {
  (( CURRENT = 1 )) && rehash
  return 1
}

zstyle ':completion::complete:*'               use-cache on

zstyle ':completion:*:matches'                 group 'yes'
zstyle ':completion:*:options'                 description 'yes'
zstyle ':completion:*:options'                 auto-description '%d'
zstyle ':completion:*:corrections'             format '%B%F{green}>> %d (errors: %e)%f%b'
zstyle ':completion:*:descriptions'            format '%B%F{magenta}>> %d%f%b'
zstyle ':completion:*:messages'                format '%B%F{cyan}>> %d%f%b'
zstyle ':completion:*:warnings'                format '%B%F{red}>> no matches found%f%b'
zstyle ':completion:*:default'                 list-prompt '%B%S%M matches%s%b'
zstyle ':completion:*'                         format '%B%F{cyan}>> %d%f%b'
zstyle ':completion:*'                         group-name ''
zstyle ':completion:*'                         verbose yes
zstyle ':completion:*' completer _oldlist _complete _correct
zstyle ':completion:*' accept-exact-dirs 'yes'
zstyle ':completion:*' file-sort name
zstyle ':completion:*' ignore-parents pwd
zstyle ':completion:*' insert-tab empty
zstyle ':completion:*' list-colors ${${(s.:.)LS_COLORS}%ec=*}
zstyle ':completion:*:*:-command-:*' list-colors ''
#zstyle ':completion:*:(directories|other-files|files|local-directories|bookmarks|executables|suffix-aliases)' list-colors ${${(s.:.)LS_COLORS}%ec=*}
#zstyle ':completion:*' file-list dirprop=user.notes
#zstyle ':completion:*' dirinfo-format '%f '${(%):-%F{11}}%i${(%):-%f}
zstyle ':completion:*' list-prompt "%SAt %p: Hit TAB for more, or the character to insert%s"
#zstyle ':completion:*' max-errors 3
zstyle -e ':completion:*' max-errors 'local i; reply=( $(( i=($#PREFIX + $#SUFFIX) / 3, i > 4 ? 4 : i )) )'
zstyle ':completion:*' prompt 'errors: %e'
zstyle :compinstall filename ~/.zshrc

autoload -U compinit
compinit -C
zstyle ':completion:*' special-dirs ..
#needs hack
zstyle ':completion:*:path-directories' special-dirs none
zstyle ':completion:*' group-name ''
zstyle ':completion:*' list-dirs-first true
#zstyle ':completion:*:functions' ignored-patterns '_*'
zstyle ':completion:*:functions' prefix-needed true
zstyle ':completion:*:*:*:*:processes' menu yes select
zstyle ':completion:*:*:*:*:processes' force-list always
zstyle ':completion:*:*:-subscript-:*' tag-order indexes parameters
[[ -f ~/.ssh/config && -f ~/.ssh/known_hosts ]] &&
  zstyle ':completion:*' hosts ${${${(M)${(f)"$(<~/.ssh/config)"}##Host *}#Host }#\*} ${${${${(f)"$(<$HOME/.ssh/known_hosts)"}:#[0-9]*}%%\ *}%%,*}


