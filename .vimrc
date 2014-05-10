set nocompatible
set backspace=2
set ruler

syntax on
filetype plugin indent on
set autoindent

" kakav bekgraund
set background=dark

" za pajton
" # vim: tabstop=8 expandtab shiftwidth=4 softtabstop=4
" set modeline
set tabstop=8
set expandtab
set shiftwidth=4
set softtabstop=4


execute pathogen#infect()

let g:syntastic_python_checkers = ['pyflakes3', 'pep8' ]
let g:syntastic_auto_loc_list = 0
let g:syntastic_check_on_open = 0
let g:syntastic_stl_format = '(>%fe /%t)'

