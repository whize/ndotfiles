"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"
" NeoVim init file
"
" author: whize.k
" url: https://github.com/whize/ndotfiles
" date: 20.12.2017
"
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Tiny Vim
if 0 | endif

" Set python3 path
let g:python3_host_prog = $PYENV_ROOT . '/shims/python3'

"dein Scripts-----------------------------
if &compatible
    set nocompatible               " Be iMproved
endif

" Required:
set runtimepath+=$HOME/.config/nvim/dein/./repos/github.com/Shougo/dein.vim

" Required:
if dein#load_state($HOME . '/.config/nvim/dein')
    call dein#begin($HOME . '/.config/nvim/dein')

    let s:toml_dir = expand($HOME . '/.config/nvim/dein/toml')

    call dein#load_toml(s:toml_dir . '/dein.toml', {'lazy': 0})
    call dein#load_toml(s:toml_dir . '/dein_lazy.toml', {'lazy': 1})

    " Required:
    call dein#end()
    call dein#save_state()
endif

" Required:
filetype plugin indent on
syntax enable

" If you want to install not installed plugins on startup.
if dein#check_install()
    call dein#install()
endif

"End dein Scripts-------------------------

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" NERDTree Settings
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
map <C-n> :NERDTreeToggle<CR>

" open a NERDTree automatically when vim starts up
autocmd vimenter * NERDTree

autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Denite Settings
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" General Settings
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set termguicolors
set number
set modeline
set modelines=5
set ignorecase
set smartcase
set expandtab
set autoindent
set smartindent
set smarttab
set showmatch

set wildmode=longest,full
set wildignore&
set wildignore=.git,.hg,.svn
set wildignore+=*.jpg,*.jpeg,*.bmp,*.gif,*.png
set wildignore+=*.o,*.obj,*.exe,*.dll,*.manifest,*.so,*.out,*.class
set wildignore+=*.swp,*.swo,*.swn
set wildignore+=*.DS_Store

" 1 tab == 4 spaces
set shiftwidth=4
set tabstop=4

let &showbreak = '+++ '

set laststatus=2
set cmdheight=2

set showmode
set showcmd
set notitle

set list
set listchars=tab:>-,trail:-,nbsp:%,extends:>,precedes:<
set nrformats=alpha,hex

set history=10000
set wrap

set fileformat=unix
set fileformats=unix,dos,mac

if exists('&ambiwidth')
    set ambiwidth=double
endif

set encoding=utf-8
set fileencoding=utf-8
set fileencodings=utf-8,iso-2022-jp,euc-jp,ucs-2le,ucs-2,cp932

set background=dark
colorscheme molokai

set secure

