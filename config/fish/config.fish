set -x EDITOR vim
set -x VISUAL vim
set -x BROWSER chromium
set -x GIT_EDITOR vim
set -x SUDO_EDITOR vim

set fish_greeting ""
set fish_git_dirty_color red
set fish_git_not_dirty_color green

# Git prompt.
function parse_git_branch
  set -l branch (git branch 2> /dev/null | grep -e '\* ' | sed 's/^..\(.*\)/\1/')
  set -l git_diff (git diff)

  if test -n "$git_diff"
    echo (set_color $fish_git_dirty_color)$branch(set_color normal)
  else
    echo (set_color $fish_git_not_dirty_color)$branch(set_color normal)
  end
end

function fish_prompt
  if test -d .git
    printf '%s@%s %s%s%s:%s\n> ' (whoami) (hostname|cut -d . -f 1) (set_color $fish_color_cwd) (prompt_pwd) (set_color normal) (parse_git_branch)
  else
    printf '%s@%s %s%s%s\n> ' (whoami) (hostname|cut -d . -f 1) (set_color $fish_color_cwd) (prompt_pwd) (set_color normal)
  end
end

function reload_fish
   source ~/.config/fish/config.fish
end

# Systemctl
function shutdown
   systemctl poweroff
end

function reboot
   systemctl reboot
end

function suspend
   systemctl suspend
end

# Arch
function pacman
   pacman --color=auto
end

function update
   sudo pacman --color=auto -Syu
   meat -u
end

# Python
function pysource
   source venv/bin/activate.fish
end function

# Poly
function ise
   source /home/robin/xilinx/14.6/ISE_DS;
   /home/robin/xilinx/14.6/ISE_DS/ISE/bin/lin64/ise
end function

# Connections
function smw
   sudo netctl start smw
end function

function home
   sudo netctl start home
end function

function cplan
   sudo netctl start cplan
end function

function pysource
   source venv/bin/activate.fish
end function

function rm
   mv --verbose -f --backup=numbered --target-directory ~/dump $argv
end function

function l
   ls --group-directories-first --color=auto $argv
end function

function ls
   /usr/bin/ls --group-directories-first --color=auto $argv
end function

function grep
   /usr/bin/grep --colour=auto $argv
end function

function wdmesg
   dmesg -L -w $argv
end function

function webcam
   mplayer tv:// -tv driver=v4l2:width=640:height=480:device=/dev/video0 -fps 30 -vf screenshot
end function

function sprunge
   curl -F 'sprunge=<-' http://sprunge.us
end function

function pacman
   /usr/bin/pacman --color=auto $argv
end function

function update
   sudo pacman --color=auto -Syu
   meat -u
end function

function tg
   touchpadtoggle
end function

function program
   djtgcfg enum
   djtgcfg prog -d Nexys2 -i 0 -f $argv --verbose
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
