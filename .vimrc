call pathogen#infect()

"Basic
set nocompatible
set cursorline
set number

syntax on
filetype plugin indent on

set expandtab
set tabstop=4
set shiftwidth=4
set softtabstop=4
set autoindent

let mapleader=","

"Colours
set t_Co=16
set background=dark
colorscheme solarized

" NERDTree Config
map <leader>n :NERDTreeToggle<CR>
let NERDTreeQuitOnOpen = 1

" Faster Pane switching
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-h> <c-w>h
nnoremap <c-l> <c-w>l
