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
set tw=72
set modeline
set modelines=5
set vb
set scrolloff=3
"setlocal spell spelllang=en_us

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
set background=light

" mutt
au BufRead /tmp/mutt-* set tw=72
au BufRead /tmp/mutt-* set nohlsearch
au BufRead /tmp/mutt-* setlocal spell spelllang=en_us

" language specific
autocmd FileType make set noexpandtab


" folding
if has ('folding')
  set foldenable
  set foldmethod=marker
  set foldmarker={{{,}}}
  set foldcolumn=0
endif

" commands
" word count
nmap <silent> <F2> g<C-g>
nnoremap <silent> <C-l> :noh<CR><C-l>

au BufEnter ?akefile* set noet
au BufLeave ?akefile* set et
