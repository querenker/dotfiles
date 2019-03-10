set encoding=utf-8
set termencoding=utf-8

let mapleader = ","

set nocompatible

call plug#begin('~/.vim/plugged')

" color schemes
Plug 'altercation/vim-colors-solarized'
Plug 'trusktr/seti.vim'
Plug 'chriskempson/vim-tomorrow-theme'

" other plugins
Plug 'rizzatti/dash.vim'
Plug 'tpope/vim-fugitive'
Plug 'bling/vim-airline'
Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-surround'
Plug 'scrooloose/nerdcommenter'
Plug 'mhinz/vim-startify'
Plug 'Valloric/YouCompleteMe', { 'do': './install.py' }
Plug 'w0rp/ale'

call plug#end()

" YouCompleMe Plugin
let g:ycm_global_ycm_extra_conf = '~/.ycm_extra_conf.py'

" Airline Plugin
if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

let g:airline_powerline_fonts = 1

" powerline symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''

let g:airline#extensions#tabline#enabled = 1

let g:airline#extensions#tabline#left_sep = ''
let g:airline#extensions#tabline#left_alt_sep = ''

set wildmenu
set wildmode=longest:list,full

set backspace=indent,eol,start

set number
set expandtab
set tabstop=4
set shiftwidth=4
set hlsearch
set ic
set autoindent
set cmdheight=1
set laststatus=2

" jump to the last position when reopening a file
if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

set showcmd      " Show (partial) command in status line.
set showmatch    " Show matching brackets.
set ignorecase   " Do case insensitive matching
set smartcase    " Do smart case matching
set incsearch    " Incremental search
set autowrite    " Automatically save before commands like :next and :make
set hidden       " Hide buffers when they are abandoned
set mouse=a      " Enable mouse usage (all modes)

map <C-n> :NERDTreeToggle<CR>


" colorscheme stuff...
set t_Co=256
syntax enable
set background=dark
colorscheme Tomorrow-Night

set clipboard=unnamed

autocmd CompleteDone * pclose
