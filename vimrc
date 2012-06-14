set wrapscan
syntax on
set background=dark
set autoindent
filetype plugin indent on
set nocompatible
set modelines=0
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set showmode
set showcmd
set visualbell
set ruler
set wrap
"set colorcolumn=85
"colorscheme molokai
set number
set hlsearch
set smartcase
set pastetoggle=<F5>
" Enable mouse in terminals
if has('mouse')
    set mouse=a
endif

set ft=xdefaults
au BufRead /tmp/mutt-* set tw=72
