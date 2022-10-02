source ~/.config/fish/alias.fish
source ~/.config/fish/prompt.fish

set PATH ~/bin $PATH
set fish_greeting ""

set fish_color_command d787ff
set -u fish_user_paths $fish_user_paths ~/github/scripts
set -x EMACS_ "emacsclient -nc"
set -x EMACS_GUI "emacsclient -t"
set -x EDITOR $EMACS_GUI
set -x VISUAL $EMACS_GUI
set -x BROWSER brave
set -x GIT_EDITOR "emacsclient -t"
set -x SUDO_EDITOR $EMACS_GUI


function reload_fish
   source ~/.config/fish/config.fish
end

function rf
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
   set current (pwd)
   cd ~/workspace/packages
   sudo pacman --color=auto -Syu

   for i in (auracle sync);
      set package (echo $i | awk -F ' ' '{print $1}')
      auracle download $package
      cd $package
      makepkg -si
      cd ~/workspace/packages
   end

   cd $current
end

# Python
function pysource
   source venv/bin/activate.fish
end

# Poly
function ise
   source /home/robin/xilinx/14.6/ISE_DS;
   /home/robin/xilinx/14.6/ISE_DS/ISE/bin/lin64/ise
end

function wdmesg
   dmesg -L -w $argv
end

function webcam
   mplayer tv:// -tv driver=v4l2:width=640:height=480:device=/dev/video0 -fps 30 -vf screenshot
end

function sprunge
   curl -F 'sprunge=<-' http://sprunge.us
end

function pacman
   /usr/bin/pacman --color=auto $argv
end

function tg
   touchpadtoggle
end

function program
   djtgcfg enum
   djtgcfg prog -d Nexys2 -i 0 -f $argv --verbose
end

function gstatus
   for i in (ls (pwd))
      if test -d $i -a -d $i/.git
         echo $i
         cd $i
         git status -s
         cd ..
      end
   end
end

function newline
   od -bc $argv
end

# git
function remove-branches
   git branch --merged master | grep -v "\* master" | xargs -n 1 git branch -d
end

function remove-stations
   sed '/Station MAC/Q' $argv
end

function kill-monit
  sudo aireplay-ng -0 0 -a $argv wlp2s0mon
end
