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

zstyle ':completion:*'                         matcher-list 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=*' 'l:|=* r:|=*'
zstyle ':completion:*'                         list-colors ''
zstyle ':completion:*'                         menu select=2

# vim zstyle {{{2
zstyle ':completion:*:*:(vim|gvim):*:*files' ignored-patterns '*~|*.(old|bak|o|hi)'
zstyle ':completion:*:*:(vim|gvim):*:*files' file-sort modification
zstyle ':completion:*:*:(vim|gvim):*' file-sort modification
zstyle ':completion:*:*:(vim|gvim):*' tag-order files

# kill zstyle {{{2
zstyle ':completion:*:*:kill:*' command 'ps -e -o pid,%cpu,tty,cputime,cmd'
zstyle ':completion:*:*:kill:*:processes' list-colors '=(#b) #([0-9]#) ([0-9a-z-]#)*=01;34=0=01'
zstyle ':completion:*:*:kill:*' insert-ids single

# man {{{2
zstyle ':completion:*:manuals' separate-sections true
zstyle ':completion:*:manuals.(^1*)' insert-sections true

# ssh/scp/rsync {{{2
zstyle ':completion:*:(scp|rsync):*' tag-order 'hosts:-host hosts:-domain:domain hosts:-ipaddr:ip\ address *'
zstyle ':completion:*:(scp|rsync):*' group-order files all-files hosts-domain hosts-host hosts-ipaddr
zstyle ':completion:*:ssh:*' tag-order 'hosts:-host hosts:-domain:domain hosts:-ipaddr:ip\ address *'
zstyle ':completion:*:ssh:*' group-order hosts-domain hosts-host users hosts-ipaddr
zstyle ':completion:*:(ssh|scp|rsync):*:hosts-host' ignored-patterns '*.*' loopback localhost
zstyle ':completion:*:(ssh|scp|rsync):*:hosts-domain' ignored-patterns '<->.<->.<->.<->' '^*.*' '*@*'
zstyle ':completion:*:(ssh|scp|rsync):*:hosts-ipaddr' ignored-patterns '^<->.<->.<->.<->' '127.0.0.<->'

# COMMANDS {{{1
zstyle ':completion:*'                         list-colors "${(s.:.)LS_COLORS}"
zstyle ':completion:*:*:cd:*'                  tag-order local-directories directory-stack path-directories
zstyle ':completion:*:-tilde-:*'               group-order 'named-directories' 'path-directories' 'users' 'expand'
zstyle ':completion:*'                         squeeze-slashes true

zstyle ':completion:*' completer _oldlist _expand _force_rehash _complete _match _approximate
zstyle ':completion:*' accept-exact-dirs 'yes'
zstyle ':completion:*' file-sort name
zstyle ':completion:*' ignore-parents pwd
zstyle ':completion:*' insert-tab empty
zstyle ':completion:*' list-colors ${${(s.:.)LS_COLORS}%ec=*}
zstyle ':completion:*:*:-command-:*' list-colors ''
zstyle ':completion:*' list-prompt "%SAt %p: Hit TAB for more, or the character to insert%s"
zstyle -e ':completion:*' max-errors 'local i; reply=( $(( i=($#PREFIX + $#SUFFIX) / 3, i > 4 ? 4 : i )) )'
zstyle ':completion:*' prompt 'errors: %e'
zstyle :compinstall filename ~/.zshrc

autoload -U compinit
compinit -C
zstyle ':completion:*' special-dirs ..
zstyle ':completion:*:path-directories' special-dirs none
zstyle ':completion:*' group-name ''
zstyle ':completion:*' list-dirs-first true
zstyle ':completion:*:functions' prefix-needed true
zstyle ':completion:*:*:*:*:processes' menu yes select
zstyle ':completion:*:*:*:*:processes' force-list always
zstyle ':completion:*:*:-subscript-:*' tag-order indexes parameters
[[ -f ~/.ssh/config && -f ~/.ssh/known_hosts ]] &&
  zstyle ':completion:*' hosts ${${${(M)${(f)"$(<~/.ssh/config)"}##Host *}#Host }#\*} ${${${${(f)"$(<$HOME/.ssh/known_hosts)"}:#[0-9]*}%%\ *}%%,*}

