"filetype off
"execute pathogen#infect()
"
"let g:syntastic_python_checkers = ['flake8', 'pyflakes3', 'pep8' ]
"let g:syntastic_auto_loc_list = 0
"let g:syntastic_check_on_open = 0
"let g:syntastic_stl_format = '(>%fe /%t)'

set nocompatible
set tabpagemax=8
set scrolloff=2
set sidescrolloff=4
set backspace=2
set ruler
"set background=dark
set synmaxcol=100 " ignorira se sintaksa u liniji nakon danog stupca

syntax on
filetype on
filetype plugin indent on

"spell checking and automatic wrapping for git commits
autocmd Filetype gitcommit setlocal spell textwidth=72

" za pajton
" # im: tabstop=8 expandtab shiftwidth=4 softtabstop=4
" set nomodeline
set modelines=3
set tabstop=8
set expandtab
set shiftwidth=4
set softtabstop=4
