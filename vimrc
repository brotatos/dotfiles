" encoding
scriptencoding utf-8
set encoding=utf-8

" generic
"set gdefault
" s/asf/asdf/g by default
set nocompatible
set wrapscan
set mouse=a
filetype plugin indent on
set wrap
set modelines=0
set backupcopy=yes
set backupdir=$HOME/.vim/backup

" tabs
set et
set tabstop=4
set shiftwidth=4
set softtabstop=4

" trailings
set list
set listchars=trail:·,tab:▸\
"set listchars=trail:·,precedes:«,extends:»,eol:↲,tab:▸\

" show
set showmode
set showcmd
set title
set wildmenu
set visualbell
set number
set ruler

" smart case search
set ignorecase
set hlsearch
set smartcase

" copy pasta
set pastetoggle=<F5>

" syntax
syntax enable

" colors
colorscheme jellybeans
set background=light

" mutt
au BufRead /tmp/mutt-* set tw=72
au BufRead /tmp/mutt-* set nohlsearch

" language specific
autocmd FileType tex setlocal spell spelllang=en_us
autocmd FileType tex setlocal tw=72
autocmd FileType python set shiftwidth=4 ts=4 tw=72
autocmd FileType c      set shiftwidth=3 ts=3 softtabstop=3 tw=100
autocmd FileType cpp    set shiftwidth=3 ts=3 softtabstop=3 tw=100

