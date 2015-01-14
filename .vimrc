set encoding=utf-8
runtime! debian.vim

let mapleader = ","

set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
Plugin 'kien/ctrlp.vim'
Plugin 'bling/vim-airline'
Plugin 'tomasr/molokai'
Plugin 'altercation/vim-colors-solarized'
Plugin 'morhetz/gruvbox'
Plugin 'nanotech/jellybeans.vim'
Plugin 'jpo/vim-railscasts-theme'
Plugin 'blerins/flattown'
Plugin 'therubymug/vim-pyte'
Plugin 'scrooloose/nerdtree'
Plugin 'tpope/vim-surround'
""Plugin 'AutoClose'
""Plugin 'snipMate'
""Plugin 'spf13/snipmate-snippets'
Plugin 'scrooloose/nerdcommenter'
Plugin 'Lokaltog/vim-easymotion'
Plugin 'mhinz/vim-startify'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'Yggdroot/indentLine'
""Plugin 'rstacruz/sparkup'
Plugin 'jplaut/vim-arduino-ino'
Plugin 'hallison/vim-markdown'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList          - list configured plugins
" :PluginInstall(!)    - install (update) plugins
" :PluginSearch(!) foo - search (or refresh cache first) for foo
" :PluginClean(!)      - confirm (or auto-approve) removal of unused plugins
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

set runtimepath^=~/.vim/bundle/ctrlp.vim

let g:ctrlp_cache_dir = $HOME . '/.cache/ctrlp'
if executable('ag')
    let g:ctrlp_user_command = 'ag %s -i --nocolor --nogroup --hidden
          \ --ignore .git
          \ --ignore .svn
          \ --ignore .hg
          \ --ignore .DS_Store
          \ --ignore "**/*.pyc"
          \ -g ""'
endif

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

" airline
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

" IndentGuide colours
"let g:indent_guides_auto_colors = 0
"autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  guibg=blue ctermbg=8
"autocmd VimEnter,Colorscheme * :hi IndentGuidesEven guibg=blue ctermbg=0
"autocmd VimEnter * :IndentGuidesEnable


set wildmenu
set wildmode=longest,list,full

set backspace=indent,eol,start

set showcmd
set incsearch
set number
"set expandtab
set tabstop=4
set shiftwidth=4
set hlsearch
set ic
set autoindent
set cmdheight=1
set laststatus=2

" Vim5 and later versions support syntax highlighting. Uncommenting the next
" line enables syntax highlighting by default.
if has("syntax")
  syntax on
endif

" Uncomment the following to have Vim jump to the last position when
" reopening a file
if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

" The following are commented out as they cause vim to behave a lot
" differently from regular Vi. They are highly recommended though.
set showcmd    " Show (partial) command in status line.
set showmatch    " Show matching brackets.
set ignorecase   " Do case insensitive matching
set smartcase    " Do smart case matching
set incsearch    " Incremental search
set autowrite    " Automatically save before commands like :next and :make
set hidden   " Hide buffers when they are abandoned
"set mouse=a    " Enable mouse usage (all modes)

map <C-n> :NERDTreeToggle<CR>

" colorscheme stuff...
" force 256 colors on the terminal
set t_Co=256

set background=dark
colorscheme flattown

set cursorline
"set cursorcolumn

"set listchars=eol:$,tab:>-,trail:~,extends:>,precedes:<
set listchars=tab:――,trail:•,extends:>,precedes:<
set list

" Wann geladen wird              # Maske   # Aktivieren      # Zu verwendende Sprache
au BufNewFile,BufRead,BufEnter   *.wiki    setlocal spell    spelllang=de_de
au BufNewFile,BufRead,BufEnter   *.md      setlocal spell    spelllang=en_us
au BufNewFile,BufRead,BufEnter   *.txt     setlocal spell    spelllang=de_de
au BufNewFile,BufRead,BufEnter   README    setlocal spell    spelllang=en_us

au BufNewFile,BufRead            *.ino     set      filetype:cpp
