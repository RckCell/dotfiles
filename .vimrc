set encoding=utf-8
set nocompatible

" General
set autoread
" set termguicolors
set wrap
set number
syntax on
filetype plugin on
colorscheme tender
set relativenumber
set ttymouse=sgr

" Tabs
set autoindent
set expandtab
set shiftwidth=4
set smarttab

set hlsearch
set incsearch
set ignorecase
set smartcase
set showcmd
set clipboard+=unnamedplus
set go+=a
set ruler
set wildmenu
set path+=**

" Yank (copy) selection to clipboard
nnoremap <C-c> "+y

" Paste from clipboard
nnoremap <C-P> "+p

