set -x HOMEBREW_GITHUB_API_TOKEN 382053d1b4abf1a7508c2e1250bd9658ae39c205
source ~/.z.fish

set EMACS "emacsclient -t"
set VIM "vim"

set -x EDITOR $EMACS
set -x VISUAL $EMACS
set -x BROWSER chromium
set -x GIT_EDITOR $EMACS
set -x SUDO_EDITOR $EMACS

set fish_greeting ""
set fish_git_dirty_color red
set fish_git_not_dirty_color green

function fish_prompt
  if not set -q -g __fish_robbyrussell_functions_defined
  set -g __fish_robbyrussell_functions_defined
     function _git_branch_name
       echo (git symbolic-ref HEAD ^/dev/null | sed -e 's|^refs/heads/||')
     end

     function _is_git_dirty
       echo (git status -s --ignore-submodules=dirty ^/dev/null)
     end
  end

  set -l cyan (set_color -o cyan)
  set -l yellow (set_color -o yellow)
  set -l red (set_color -o red)
  set -l blue (set_color -o blue)
  set -l green (set_color -o green)
  set -l normal (set_color normal)

  set -l arrow "$red➜"
  set -l cwd $cyan(prompt_pwd)
  set -l pwd $cyan(pwd)

  if [ (_git_branch_name) ]
     set -l git_branch $blue(_git_branch_name)
     set git_info " $blue($git_branch$blue)"

     if [ (_is_git_dirty) ]
       set arrow "$yellow✗"
       set git_branch $red(_git_branch_name)
       set git_info " $blue($git_branch$blue)"
     end
  end

  echo -n -s '[' (date "+%T") '] '$green(hostname|cut -d . -f 1) ':' $cwd $git_info
  echo  ''
  echo -n -s $arrow ' ' $normal
end

function sprunge
   curl -F 'sprunge=<-' http://sprunge.us
end function

# git
function remove-branches
   git branch --merged master | grep -v "\* master" | xargs -n 1 git branch -d
end function

function gstatus
   for i in (ls (pwd))
      if test -d $i -a -d $i/.git
         echo $i
         cd $i
         git status -s
         cd ..
      end
   end
end function

function my
   mysql --defaults-file=~/.my.cnf
end

alias vim="$EMACS"
alias v="$EMACS"
alias e="emacsclient -nc"
alias e="$EMACS"
alias l="/usr/local/bin/gls --color -h --group-directories-first"
alias ls="l"
alias la="l -a"
alias pysource=". venv/bin/activate.fish"
alias reload_fish=". ~/.config/fish/config.fish"
alias g="git"
alias gg="git grep -n"
alias rf="reload_fish"
alias rm="rmtrash"
