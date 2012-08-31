" encoding
scriptencoding utf-8
set encoding=utf-8

" generic
set nocompatible
set wrapscan
set mouse=a
filetype plugin indent on
set wrap
set modelines=0

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

" latex
autocmd FileType tex setlocal spell spelllang=en_us
