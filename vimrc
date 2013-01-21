" encoding
scriptencoding utf-8
set encoding=utf-8

" generic
set autoread
set title
set nocompatible
set wrapscan
set mouse=a
filetype plugin indent on
set wrap
set modelines=0
set vb
set scrolloff=5

" backup
set backupcopy=yes
set backupdir=$HOME/.vim/backup

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

" python
autocmd FileType python set shiftwidth=4 tabstop=4 tw=72
autocmd FileType c      set shiftwidth=3 tabstop=3 softtabstop=3 tw=72
