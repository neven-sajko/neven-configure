"filetype off

set nocompatible

set encoding=utf-8
set fileencodings=utf-8
set fileencoding=utf-8
set fileformats=unix
set modelines=0

set tabpagemax=8

set nobackup
"set nowritebackup
set directory=~/.vim/swp//
"set viminfo=

filetype plugin indent on          """"""""""""""""""""""""""""""""""

" spell checking and automatic wrapping for text files
autocmd Filetype text setlocal spell textwidth=71 colorcolumn=72

set backspace=indent,eol,start
set tabstop=8

set scrolloff=24
set sidescrolloff=8

"set incsearch
set hlsearch
set cmdheight=2
"set colorcolumn=92
set ruler
"set mouse=n

set background=dark

" Convenient command to see the difference between the current buffer and the
" file it was loaded from, thus the changes you made.
" Only define it when not defined already.
"if !exists(":DiffOrig")
  command DiffOrig vert new | set bt=nofile | r ++edit # | 0d_ | diffthis
		  \ | wincmd p | diffthis
"endif


"todo:
"textwidth
"column numbers
