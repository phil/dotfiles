"call pathogen#infect()

set nocompatible
filetype off

" Reload with :source ~/.vimrc
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'gmarik/Vundle.vim'

Plugin 'altercation/vim-colors-solarized'

" Searching
Plugin 'scrooloose/nerdtree'
Plugin 'kien/ctrlp.vim'
Plugin 'tacahiroy/ctrlp-funky'
Plugin 'rking/ag.vim'

" Coding
Plugin 'vim-ruby/vim-ruby'
Plugin 'tpope/vim-rails'
Plugin 'thoughtbot/vim-rspec'
Plugin 'scrooloose/nerdcommenter'

" General Text Editing
Plugin 'tpope/vim-surround'

Plugin 'nelstrom/vim-textobj-rubyblock'
Plugin 'kana/vim-textobj-user'

Plugin 'terryma/vim-multiple-cursors'


call vundle#end()

"Basic
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

" because my spelling is pretty rubbish
set spell

" Set Keymappings timeout
" This ensures <ESC> followed quickly by <shift>-O is fast
set timeout timeoutlen=5000 ttimeoutlen=100

" 72 char text width
set tw=80
set cc=+1

set hlsearch

" BASH style filename completion
set wildmode=longest:full
set wildmenu

set wildignore+=*/tmp/*,*.so,*.swp,*.zip,solr/**,log/**,*.psd,*.PSD,.git/**,.gitkeep
set wildignore+=*.ico,*.ICO,backup/**,*.sql,*.dump,*.tmp,*.min.js,Gemfile.lock
set wildignore+=*.png,*.PNG,*.JPG,*.jpg,*.JPEG,*.jpeg,*.GIF,*.gif,*.pdf,*.PDF
set wildignore+=vendor/**,coverage/**,tmp/**,doc/**,rdoc/**,*.BACKUP.*,*.BASE.*,*.LOCAL.*,*.REMOTE.*,.sass-cache/**

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
let g:ctrlp_extensions = ['funky']
"nnoremap <leader>t :CtrlP<CR>
nnoremap <leader>b :CtrlPBuffer<CR>
nnoremap <leader>m :CtrlPMRU<CR>
nnoremap <leader>f :CtrlPFunky<Cr>
"let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)|doc$'
"let g:ctrlp_custom_ignore = '\.git|doc'

"let g:multi_cursor_use_default_mapping=1
"let g:multi_cursor_next_key='<C-j>'
"let g:multi_cursor_prev_key='<C-k>'
"let g:multi_cursor_skip_key='<C-/>'
"let g:multi_cursor_quit_key='<Esc>'

" Search Helpers
nnoremap g* "ayiw :Ag "<C-R>a"<CR>
vnoremap g* "ay :Ag "<C-R>a"<CR>

" Shortcuts
inoremap jj <ESC>

"nnoremap K [m
"nnoremap  ]m

map g= gg=G''

nnoremap Q @q
vnoremap Q :norm @q<cr>

runtime macros/matchit.vim


" SCROLLING
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set scrolloff=8         "Start scrolling when we're 8 lines away from margins
set sidescrolloff=15
set sidescroll=1


" STATUS LINE / POWERLINE
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"set laststatus=2
"set statusline=%<%f\ (%{&ft})\ %-4(%m%)%=%-19(%3l,%02c%03V%)
":hi User1 term=inverse,bold cterm=inverse,bold ctermfg=red
"
"let g:Powerline_symbols = 'fancy'


map <Leader>S :call RunCurrentSpecFile()<CR>
map <Leader>s :call RunNearestSpec()<CR>
"map <Leader>l :call RunLastSpec()<CR>
map <Leader>r :call RunAllSpecs()<CR>
"let g:rspec_command = "Rrunner {spec}"
"let g:rspec_command = "Dispatch zeus rspec {spec}"
let g:rspec_command = "compiler rspec | set makeprg=spring | Make rspec {spec}"


" Powerline
" """""""""
"python from powerline.vim import setup as powerline_setup
"python powerline_setup()
"python del powerline_setup

" Tests
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"function! RunSpecFile(file)
  "if filereadable(a:file)
    "exec '!clear && echo ' . a:file  ' && bundle exec rspec --color ' . a:file
  "else
    "echo "File " . a:file . " does not exist"
  "endif
"endfunction

"function! RunSpec()
  "let currentFile = expand('%')
  "if IsSpecFile(currentFile)
    "call RunSpecFile(currentFile)
  "elseif IsCodeFile(currentFile)
    "let specFile = CodeToSpecFile(currentFile)
    "call RunSpecFile(specFile)
  "end
"endfunction
"map <leader>s :call RunSpec()<CR>

" Alternate Files
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"function! GotoAlternateFile()
  "let currentFile = expand('%')
  "if IsSpecFile(currentFile)
    "let codeFile = SpecToCodeFile(currentFile)
    "exec ":e " . codeFile
  "elseif IsCodeFile(currentFile)
    "let specFile = CodeToSpecFile(currentFile)
    "exec ":e " . specFile
  "end
"endfunction
"map <leader>. :call GotoAlternateFile()<CR>

"function! IsSpecFile(file)
  "return match(a:file, '^spec/') != -1
"endfunction

"function! IsCodeFile(file)
  "return !IsSpecFile(a:file) && (match(a:file, "\.rb") != -1)
"endfunction

"function! IsRailsAppFile(file)
  "return match(a:file, '\<controllers\>\|\<models\>\|\<views\>') != -1
"endfunction

"function! CodeToSpecFile(file)
  "let specFile = a:file
  "if IsRailsAppFile(a:file)
    "let specFile = substitute(specFile, '^app/', '', '')
  "endif
  "let specFile = 'spec/' . substitute(specFile, '\.rb$', '_spec.rb', '')
  "return specFile
"endfunction

"function! SpecToCodeFile(file)
  "let codeFile = substitute(a:file, '_spec\.rb$', '.rb', '')
  "let codeFile = substitute(codeFile, '^spec/', '', '')
  "if IsRailsAppFile(a:file)
    "let codeFile = 'app/' . codeFile
  "endif
  "return codeFile
"endfunction
