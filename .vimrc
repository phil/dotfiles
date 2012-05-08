call pathogen#infect()

" Reload with :source ~/.vimrc

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

set encoding=utf-8

let mapleader=","

"Colours
set t_Co=256
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

" CtrlP
let g:ctrlp_map = '<leader>t'
let g:ctrlp_cmd = 'CtrlP'
"nnoremap <leader>t :CtrlP<CR>
nnoremap <leader>b :CtrlPBuffer<CR>
nnoremap <leader>m :CtrlPMRU<CR>

" Shortcuts
inoremap jj <ESC>


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" SCROLLING
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set scrolloff=8         "Start scrolling when we're 8 lines away from margins
set sidescrolloff=15
set sidescroll=1

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" STATUS LINE / POWERLINE
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set laststatus=2
"set statusline=%<%f\ (%{&ft})\ %-4(%m%)%=%-19(%3l,%02c%03V%)
":hi User1 term=inverse,bold cterm=inverse,bold ctermfg=red
"
"let g:Powerline_symbols = 'fancy'

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Tests
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
function! RunTest()
    exec ":!clear && echo % && bundle exec rspec %"
endfunction
map <leader>s :call RunTest()<CR>
