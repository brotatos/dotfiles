# Set the color command to pink.
if test -d /usr/bin/siteperl
   set -x PATH $PATH /usr/bin/siteperl
end
if test -d /usr/lib/perl5/site_perl/bin
   set -x PATH $PATH /usr/lib/perl5/site_perl/bin
end

if test -d /usr/bin/vendor_perl
   set -x PATH $PATH /usr/bin/vendor_perl
end
if test -d /usr/bin/vendor_perl/bin
   set -x PATH $PATH /usr/bin/vendor_perl/bin
end

if test -d /usr/bin/core_perl
   set -x PATH $PATH /usr/bin/core_perl
end

set fish_color_command d787ff
set -u fish_user_paths $fish_user_paths ~/github/scripts ~/.gem/ruby/2.0.0/bin
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

  if [ (_git_branch_name) ]
     set -l git_branch $blue(_git_branch_name)
     set git_info " $blue($git_branch$blue)"

     if [ (_is_git_dirty) ]
       set arrow "$yellow✗"
       set git_branch $red(_git_branch_name)
       set git_info " $blue($git_branch$blue)"
     end
  end

  echo -n -s $green(hostname|cut -d . -f 1) ':' $cwd $git_info
  echo -n -s ' '$arrow ' ' $normal
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

function newline
   od -bc $argv
end function

function style
   java -jar ~/Dropbox/CStyle.jar $argv
end function

function compare
   make
   ./Compress -rsct $argv > mine
   ./providedCompress -rsct $argv > his
   colordiff mine his
end function

function compareLZWOut
   make
   ./Compress -rsct $argv > mine
   mv $argv.Z mine.Z
   ./StaleyLZWCmp -rsct $argv > his
   mv $argv.Z his.Z
   colordiff mine his
   colordiff mine.Z his.Z
end function

function compareOut
   make
   ./Compress $argv
   mv $argv.Z mine.Z
   ./providedCompress $argv
   mv $argv.Z his.Z
   colordiff mine.Z his.Z
end function

function comp
   make
   ./Compress -s $argv > mine
   ./StaleyCompress -s $argv > his
   colordiff mine his
end function

function compareLZW
   make
   ./Compress -s $argv > mine
   ./StaleyLZWCmp -s $argv > his
   colordiff mine his
end function

function timeit
   make
   bash -c "(time ./StaleyStress) > curTime 2>&1"
end function

function saferun
   ~/Dropbox/SafeRun $argv
end function

function myip
   dig +short myip.opendns.com @resolver1.opendns.com
end function
