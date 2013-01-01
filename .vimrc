set nocompatible
set rnu
set backspace=indent,eol,start
set showcmd
set showmode
set visualbell
set autoread
syntax on

set incsearch
set hlsearch

silent !mkdir ~/.vim/backups > /dev/null 2>&1
set undodir=~/.vim/backups
set undofile

set autoindent
set smartindent
set smarttab
set shiftwidth=2
set softtabstop=2
set tabstop=2
set expandtab

filetype plugin on
filetype indent on

set list listchars=tab:\ \ ,trail:◀

set nowrap
set linebreak


