let mapleader =","

if ! filereadable(system('echo -n "$XDG_CONFIG_HOME/nvim/autoload/plug.vim"'))
	echo "Downloading junegunn/vim-plug to manage plugins..."
	silent !mkdir -p $XDG_CONFIG_HOME/.config/nvim/autoload/
	silent !curl "https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim" > $XDG_CONFIG_HOME/.config/nvim/autoload/plug.vim
	autocmd VimEnter * PlugInstall
endif

call plug#begin()
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'powerline/powerline'
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'preservim/nerdtree'
Plug 'ap/vim-css-color'
Plug 'jreybert/vimagit'
call plug#end()

colorscheme dracula
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme='dracula'
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>
let NERDTreeShowHidden=1

nnoremap <C-h> :bprev<CR>
nnoremap <C-l> :bnext<CR>

filetype on
filetype plugin on
filetype indent on
syntax on
set rtp+=/usr/share/vim/vimfiles

set nocompatible
set encoding=utf-8

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
set mouse=

set wildmenu
set wildmode=list:longest
set wildignore=*.docx,*.jpg,*.png,*.gif,*.pdf,*.pyc,*.exe,*.flv,*.img,*.xlsx

autocmd VimLeave * set guicursor=a:hor100-blinkon0
