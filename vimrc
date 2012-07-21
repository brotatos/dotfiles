" generic
set nocompatible
set wrapscan
set mouse=a
set autoindent
filetype plugin indent on
set wrap
set modelines=0

" tabs
set tabstop=4
set shiftwidth=4
set softtabstop=4

" show
set showmode
set showcmd
set ignorecase
set title
set wildmenu
set visualbell

" line-numbering
set number
set ruler

" smart case search
set hlsearch
set smartcase

" copy pasta
set pastetoggle=<F5>

" colors
colorscheme jellybeans
syntax enable
set background=dark

" mutt
au BufRead /tmp/mutt-* set tw=72
