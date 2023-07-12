let mapleader =","
set encoding=utf-8
set nocompatible

call plug#begin()
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'powerline/powerline'
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'ap/vim-css-color'
Plug 'jreybert/vimagit'
call plug#end()

colorscheme dracula
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme='dracula'

filetype on
filetype plugin on
filetype indent on
syntax on

set number relativenumber
set clipboard+=unnamedplus
set title

set shiftwidth=4
set tabstop=4
set expandtab
set cursorline

set nobackup
set nowrap
set incsearch
set nohlsearch
set ignorecase
set smartcase
set showmode

set wildmenu
set wildmode=list:longest
set wildignore=*.docx,*.jpg,*.png,*.gif,*.pdf,*.pyc,*.exe,*.flv,*.img,*.xlsx
