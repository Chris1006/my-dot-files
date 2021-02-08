" Set Leader Key to Space
let g:mapleader = "\<Space>"

" Syntax Highlighting On
syntax on

" long lines without linebreak
" set nowrap 
set wrap
let &showbreak='  '
set breakindent
" Status Line Options
set pumheight=10     
set cmdheight=2 
set laststatus=2 

" Encoding
set encoding=utf-8
set fileencoding=utf-8

" Appearance
set background=dark
set showtabline=2
set t_Co=256  

" How do we Split Windows
set splitbelow
set splitright

" Cursor Settings
set number
set relativenumber
set ruler	
set cursorline
set colorcolumn=80

" Tabstop and Indention
set tabstop=2
set shiftwidth=2
set smarttab
set expandtab
set autoindent

" File Settings
set nobackup
set nowritebackup

" Clipboard
set clipboard=unnamedplus
