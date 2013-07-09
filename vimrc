" Generic
set autoread
set nocompatible
set wrapscan
set mouse=a
colorscheme jellybeans
syntax on
filetype plugin indent on
set modelines=5

" Encoding
scriptencoding utf-8
set encoding=utf-8

" Display
set title
set wrap
set linebreak
set cursorline
set visualbell
set laststatus=2
set scrolloff=5
set colorcolumn=80

" Indentation
set autoindent
set smartindent
set smarttab
set expandtab
set tw=79
set shiftwidth=3
set softtabstop=3
set tabstop=3

" Trailings
set list
set listchars=trail:·,tab:▸\

" Show
set showmode
set showcmd
set title
set wildmenu
set visualbell
set number
set ruler

" Search
set ignorecase
set hlsearch
set smartcase
set incsearch

" Mutt
au BufRead /tmp/mutt-* set tw=72
au BufRead /tmp/mutt-* set nohlsearch
au BufRead /tmp/mutt-* setlocal spell spelllang=en_us

" Folding
if has ('folding')
  set foldenable
  set foldmethod=marker
  set foldmarker={{{,}}}
  set foldcolumn=0
endif

" Commands

" Copy and paste
set pastetoggle=<F5>
" Word count
nmap <silent> <F2> g<C-g>

" Redraw and clear hlsearch.
nnoremap <silent> <C-l> :noh<CR><C-l>

" camelCase
nmap  <F3> :%s/_\([a-z]\)/\u\1/gc

" Notes to self
" :retab - fix all old tabs/space errors
"
" ^Y scroll buffer up
" ^E scroll buffer down
