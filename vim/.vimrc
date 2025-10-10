" vimrc for classic vim, use ~/.config/nvim for neovim
set nocompatible
filetype off

" install with :PluginInstall
" Reload with :source ~/.vimrc
set rtp+=~/.local/share/vim/bundle/Vundle.vim
call vundle#begin('~/.local/share/vim/bundle')
Plugin 'gmarik/Vundle.vim'

" Plugin 'altercation/vim-colors-solarized'

" Searching
Plugin 'scrooloose/nerdtree'
" Plugin 'Xuyuanp/nerdtree-git-plugin'
" Plugin 'kien/ctrlp.vim'
"Plugin 'tacahiroy/ctrlp-funky'
" Plugin 'rking/ag.vim'
" Plugin 'justinmk/vim-sneak'

" Coding
" Plugin 'vim-ruby/vim-ruby'
"Plugin 'Danchoi/ruby_bashrockets.vim'
" Plugin 'tpope/vim-rails'
" Plugin 'thoughtbot/vim-rspec'
"Plugin 'scrooloose/nerdcommenter'
" Plugin 'tpope/vim-commentary'

" Plugin 'mattn/emmet-vim' " HTML expansion

" Plugin 'pangloss/vim-javascript'
" Plugin 'leafgarland/typescript-vim'
" Plugin 'mxw/vim-jsx'
" Plugin 'kchmck/vim-coffee-script'

" Plugin 'elzr/vim-json'
" Plugin 'jparise/vim-graphql'

" Plugin 'github/copilot.vim'


" " Utilities
" Plugin 'tpope/vim-dispatch'
"Plugin 'w0rp/ale'
" Plugin 'tpope/vim-fugitive'
"Plugin 'bling/vim-airline'
"Plugin 'majutsushi/tagbar'
" Plugin 'airblade/vim-gitgutter'

" Plugin 'vim-utils/vim-ruby-fold'

" General Text Editing
" Plugin 'tpope/vim-surround'

" Plugin 'MarcWeber/vim-addon-mw-utils'
" Plugin 'tomtom/tlib_vim' " utils
" Plugin 'garbas/vim-snipmate'
" Plugin 'honza/vim-snippets'

" Plugin 'nelstrom/vim-textobj-rubyblock'
" Plugin 'kana/vim-textobj-user'

Plugin 'terryma/vim-multiple-cursors'


call vundle#end()

"Basic
set nocursorline
set number

" Try to make Vim faster
"set lazyredraw
"set ttyfast
" let g:ruby_no_expensive = 1

" Always show status
set laststatus=2

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

set hlsearch

" bash style filename completion
set wildmode=longest:full
set wildmenu

set wildignore+=*/tmp/*,*.so,*.swp,*.zip,solr/**,log/**,*.psd,*.PSD,.git/**,.gitkeep
set wildignore+=*.ico,*.ICO,backup/**,*.sql,*.dump,*.tmp,*.min.js,Gemfile.lock
set wildignore+=*.png,*.PNG,*.JPG,*.jpg,*.JPEG,*.jpeg,*.GIF,*.gif,*.pdf,*.PDF
set wildignore+=*/vendor/**,*/node_modules/**,coverage/**,tmp/**,doc/**,rdoc/**,*.BACKUP.*,*.BASE.*,*.LOCAL.*,*.REMOTE.*,.sass-cache/**

" Temp Files
set nobackup
"set backupdir=~/tmp
"set directory=~/tmp
"set directory=~/tmp,/var/tmp,/tmp
"set directory=.,$TEMP
" Switch off Swap Files for now
set noswapfile

set encoding=utf-8

" When spliting, focus on the new pane
set splitbelow
set splitright

" No arrow keys please
" i lile the pain
map <Left> <Nop>
map <Right> <Nop>
map <Up> <Nop>
map <Down> <Nop>

let mapleader=","

"Colours
set t_Co=256
set background=dark
"colorscheme solarized

" Autoload Commands
"if has("autocmd")
"endif

" augroup vimrc
"   autocmd!
"   autocmd BufWinEnter,Syntax * syn sync minlines=500 maxlines=500
" augroup END

" GOTO
noremap <leader><leader> <c-^>

" Edit files local to current buffer
cnoremap %% <C-R>=expand('%:h').'/'<cr>

" set rtp+=/Users/pbalchin/Library/Python/3.7/lib/python/site-packages/powerline/bindings/vim
" python from powerline.vim import setup as powerline_setup
" python powerline_setup()
" python del powerline_setup
" set rtp+=/usr/local/lib/python2.7/site-packages/powerline/bindings/vim

" NERDTree Config
map <leader>n :NERDTreeToggle<CR>
map <leader>N :NERDTreeFind<CR>
let NERDTreeQuitOnOpen = 1
let g:NERDTreeShowHidden = 1
let g:NERDTreeWinSize = 40 

" set foldmethod=syntax
" let g:ruby_fold = 1
" let g:ruby_foldable_groups = 'def'

" Faster Pane switching
" iTerm2 needs ^h command key patching in neovim
" Prefesernces -> Keys: ^h = Send Escape Sequence [104;5u
nnoremap <C-j> <c-w>j
nnoremap <C-k> <c-w>k
nnoremap <C-h> <c-w>h 
nnoremap <C-l> <c-w>l

" CtrlP
"let g:ctrlp_map = '<leader>t'
"let g:ctrlp_cmd = 'CtrlP'
" let g:ctrlp_extensions = ['funky']
"nnoremap <leader>b :CtrlPBuffer<CR>
"nnoremap <leader>m :CtrlPMRU<CR>
" nnoremap <leader>f :CtrlPFunky<Cr>

" Emmet
" let g:user_emmet_mode='i'
" let g:user_emmet_install_global = 0
" autocmd FileType html,css EmmetInstall
" let g:user_emmet_expandabbr_key='<Shift><Tab>'

" Search Helpers for Ag
"nnoremap g* "ayiw :Ag "<C-R>a"<CR>
"vnoremap g* "ay :Ag "<C-R>a"<CR>

" Shortcuts
inoremap jj <ESC>

map g= gg=G''

" Kill Ex mode
nnoremap Q <Nop>

"runtime macros/matchit.vim

" SCROLLING
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set scrolloff=8         "Start scrolling when we're 8 lines away from margins
set sidescrolloff=15
set sidescroll=1

" Rspec

"map <Leader>S :call RunCurrentSpecFile()<CR>
"map <Leader>s :call RunNearestSpec()<CR>
"map <Leader>l :call RunLastSpec()<CR>
"map <Leader>a :call RunAllSpecs()<CR>
"let g:rspec_command = 'Dispatch bundle exec rspec {spec}'
