" encoding
scriptencoding utf-8
set encoding=utf-8

" generic
set title
set nocompatible
set wrapscan
set mouse=a
filetype plugin indent on
set wrap
set modelines=0
set vb

" display
set linebreak
set cursorline

" indentation
set autoindent
set smartindent
set smarttab
set shiftwidth=4
set softtabstop=4
set expandtab

" trailings
set list
set listchars=trail:·,tab:▸\

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
"let g:zenburn_high_Contrast = 1
set background=light

" mutt
au BufRead /tmp/mutt-* set tw=72
au BufRead /tmp/mutt-* set nohlsearch
au BufRead /tmp/mutt-* setlocal spell spelllang=en_us

" latex
autocmd FileType tex setlocal spell spelllang=en_us
autocmd FileType tex setlocal tw=72
