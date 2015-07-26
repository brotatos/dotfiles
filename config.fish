# Regular syntax highlighting colors
set fish_color_normal normal
set fish_color_param 00afff cyan
set fish_color_redirection normal
set fish_color_comment red
set fish_color_error red --bold
set fish_color_escape cyan
set fish_color_operator cyan
set fish_color_quote brown
set fish_color_autosuggestion 555 yellow
set fish_color_valid_path --underline

set fish_color_cwd green
set fish_color_cwd_root red

# Background color for matching quotes and parenthesis
set fish_color_match cyan

# Background color for search matches
set fish_color_search_match --background=purple

# Pager colors
set fish_pager_color_prefix cyan
set fish_pager_color_completion normal
set fish_pager_color_description 555 yellow
set fish_pager_color_progress cyan

#
# Directory history colors
#
set fish_color_history_current cyan

set fish_color_command d787ff
set -u fish_user_paths $fish_user_paths ~/github/scripts
set -x EDITOR vim
set -x VISUAL vim
set -x BROWSER chromium
set -x GIT_EDITOR vim
set -x SUDO_EDITOR vim

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
  #set -l cwd $cyan(basename (prompt_pwd))
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

  #echo -n -s $green(hostname|cut -d . -f 1) ':' $cwd $git_info
  echo -n -s $green(hostname|cut -d . -f 1) ':' $pwd $git_info
  echo  ''
  echo -n -s $arrow ' ' $normal
end

function reload_fish
   . ~/.config/fish/config.fish
end

# Python
function pysource
   source venv/bin/activate.fish
end function

function pysource
   . venv/bin/activate.fish
end function

function rm
   rsync -av $argv ~/dump
   /bin/rm -rf $argv
end function

function l
   ls $argv
end function

function la
   ls -a $argv
end function

function grep
   grep --colour=auto $argv
end function

function sprunge
   curl -F 'sprunge=<-' http://sprunge.us
end function

function program
   djtgcfg enum
   djtgcfg prog -d Nexys2 -i 0 -f $argv --verbose
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
