set encoding=utf-8
set nocompatible

" General
set autoread
set termguicolors
set wrap
set number
syntax on
filetype plugin on
colorscheme tender
set relativenumber

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

" Statusline Settings
set laststatus=2

function! GitBranch()
  return system("git rev-parse --abbrev-ref HEAD 2>/dev/null | tr -d '\n'")
endfunction

function! StatuslineGit()
  let l:branchname = GitBranch()
  return strlen(l:branchname) > 0?'  '.l:branchname.' ':''
endfunction

set statusline=
set statusline+=%#PmenuSel#
set statusline+=%{StatuslineGit()}
set statusline+=%#StatusLineNC#
set statusline+=\ %f
set statusline+=%m\
set statusline+=%=
set statusline+=%#StatusLine#
set statusline+=\ %y
set statusline+=\ %{&fileencoding?&fileencoding:&encoding}
set statusline+=\[%{&fileformat}\]
set statusline+=\ %p%%
set statusline+=\ %l:%c
set statusline+=\ 
