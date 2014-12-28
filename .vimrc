"filetype off
"execute pathogen#infect()
"
"let g:syntastic_python_checkers = ['flake8', 'pyflakes3', 'pep8' ]
"let g:syntastic_auto_loc_list = 0
"let g:syntastic_check_on_open = 0
"let g:syntastic_stl_format = '(>%fe /%t)'

set nocompatible

set encoding=utf-8
set fileencodings=utf-8,latin1
set fileencoding=utf-8
set fileformats=unix
set modelines=0

set tabpagemax=8

"syntax on
set synmaxcol=128 " ignorira se sintaksa u liniji nakon danog stupca
filetype plugin indent on

" spell checking and automatic wrapping for text files
autocmd Filetype text setlocal spell textwidth=72

set backspace=indent,eol,start
set tabstop=8
set expandtab
set shiftwidth=4
set softtabstop=4

set scrolloff=2
set sidescrolloff=4

"set colorcolumn=72
set ruler
set incsearch
set cmdheight=2

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
