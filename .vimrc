set nocompatible
set backspace=2
execute pathogen#infect()
set autoindent
filetype on
syntax on
syntax on
filetype plugin indent on
set background=dark
set expandtab
set shiftwidth=4
set softtabstop=4
set ruler
let g:syntastic_python_checkers = ['pyflakes3', 'pep8' ]
let g:syntastic_auto_loc_list = 0
let g:syntastic_check_on_open = 0
let g:syntastic_stl_format = '(>%fe /%t)'
" let g:syntastic_python_pep8_args='--ignore=E501'

