call pathogen#infect()

" Reload with :source ~/.vimrc

"Basic
set nocompatible
set nocursorline
set number

syntax on
filetype plugin indent on

set expandtab
set tabstop=2
set shiftwidth=2
set softtabstop=2
set autoindent
set linebreak

set backspace=indent,eol,start

" 72 char text width
set tw=80
set cc=+1

set hlsearch

" BASH style filename completion
set wildmode=longest:full
set wildmenu

" Temp Files
set backup
set backupdir=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set directory=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
" Switch off Swap Files for now
set noswapfile

set encoding=utf-8

" When spliting, focus on the new pane
map <C-\> :vsplit<CR>
map <C-_> :split<CR>
set splitbelow
set splitright

" No arrow keys please
map <Left> <Nop>
map <Right> <Nop>
map <Up> <Nop>
map <Down> <Nop>

let mapleader=","

"Colours
set t_Co=256
set background=dark
colorscheme solarized

" Autoload Commands
if has("autocmd")
  "autocmd InsertEnter * :set number
  "autocmd InsertLeave * :set relativenumber

"autocmd FocusLost * :set number
"autocmd FocusGained * :set relativenumber

  "autocmd bufwritepost .vimrc source $MYVIMRC
endif

" GOTO
noremap <leader><leader> <c-^>

" Edit fles local to current buffer
cnoremap %% <C-R>=expand('%:h').'/'<cr>
map <leader>e :edit %%

function! ToggleLineNumbers()
  if &number == 1
    set relativenumber
  else
    set number
  end
endfunction
map <leader>; :call ToggleLineNumbers()<CR>


" NERDTree Config
map <leader>n :NERDTreeToggle<CR>
map <leader>N :NERDTreeFind<CR>
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
noremap <leader>m :CtrlPMRU<CR>
let g:ctrlp_custom_ignore = {
  \ 'dir': '\.git$\|\.hg$\|\.svn$|tmp\/|doc\/',
  \ 'file': '\v\.(exe|so|dll)$',
  \ }

" Shortcuts
inoremap jj <ESC>



" SCROLLING
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set scrolloff=8         "Start scrolling when we're 8 lines away from margins
set sidescrolloff=15
set sidescroll=1


" STATUS LINE / POWERLINE
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set laststatus=2
"set statusline=%<%f\ (%{&ft})\ %-4(%m%)%=%-19(%3l,%02c%03V%)
":hi User1 term=inverse,bold cterm=inverse,bold ctermfg=red
"
"let g:Powerline_symbols = 'fancy'


" Tests
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
function! RunSpecFile(file)
  if filereadable(a:file)
    exec '!clear && echo ' . a:file  ' && bundle exec rspec --color ' . a:file
  else
    echo "File " . a:file . " does not exist"
  endif
endfunction

function! RunSpec()
  let currentFile = expand('%')
  if IsSpecFile(currentFile)
    call RunSpecFile(currentFile)
  elseif IsCodeFile(currentFile)
    let specFile = CodeToSpecFile(currentFile)
    call RunSpecFile(specFile)
  end
endfunction
map <leader>s :call RunSpec()<CR>

" Alternate Files
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

function! GotoAlternateFile()
  let currentFile = expand('%')
  if IsSpecFile(currentFile)
    let codeFile = SpecToCodeFile(currentFile)
    exec ":e " . codeFile
  elseif IsCodeFile(currentFile)
    let specFile = CodeToSpecFile(currentFile)
    exec ":e " . specFile
  end
endfunction
map <leader>. :call GotoAlternateFile()<CR>

function! IsSpecFile(file)
  return match(a:file, '^spec/') != -1
endfunction

function! IsCodeFile(file)
  return !IsSpecFile(a:file) && (match(a:file, "\.rb") != -1)
endfunction

function! IsRailsAppFile(file)
  return match(a:file, '\<controllers\>\|\<models\>\|\<views\>') != -1
endfunction

function! CodeToSpecFile(file)
  let specFile = a:file
  if IsRailsAppFile(a:file)
    let specFile = substitute(specFile, '^app/', '', '')
  endif
  let specFile = 'spec/' . substitute(specFile, '\.rb$', '_spec.rb', '')
  return specFile
endfunction

function! SpecToCodeFile(file)
  let codeFile = substitute(a:file, '_spec\.rb$', '.rb', '')
  let codeFile = substitute(codeFile, '^spec/', '', '')
  if IsRailsAppFile(a:file)
    let codeFile = 'app/' . codeFile
  endif
  return codeFile
endfunction
