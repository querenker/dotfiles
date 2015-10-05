set encoding=utf-8
set termencoding=utf-8

set t_Co=256

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

" color scheme
Plugin 'altercation/vim-colors-solarized'
Plugin 'tomasr/molokai'
Plugin 'morhetz/gruvbox'
Plugin 'blerins/flattown'
Plugin 'trusktr/seti.vim'
Plugin 'akmassey/vim-codeschool'
Plugin 'chriskempson/base16-vim'
Plugin 'nanotech/jellybeans.vim'
Plugin 'NLKNguyen/papercolor-theme'
Plugin 'chriskempson/vim-tomorrow-theme'
Plugin '29decibel/codeschool-vim-theme'
Plugin 'whatyouhide/vim-gotham'
Plugin 'ajh17/Spacegray.vim'
Plugin 'jnurmine/Zenburn'
Plugin 'rizzatti/dash.vim'

" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
Plugin 'kien/ctrlp.vim'
Plugin 'bling/vim-airline'
Plugin 'scrooloose/nerdtree'
Plugin 'tpope/vim-surround'
Plugin 'Townk/vim-autoclose'
Plugin 'scrooloose/nerdcommenter'
Plugin 'Lokaltog/vim-easymotion'
Plugin 'mhinz/vim-startify'
Plugin 'Yggdroot/indentLine'
Plugin 'Railscasts-Theme-GUIand256color'
"Plugin 'hallison/vim-markdown'
""Plugin 'jplaut/vim-arduino-ino'
""Plugin 'spf13/snipmate-snippets'
""Plugin 'nathanaelkane/vim-indent-guides'
""Plugin 'rstacruz/sparkup'
""Plugin 'davidhalter/jedi-vim'
""Plugin 'Valloric/YouCompleteMe'
Plugin 'christoomey/vim-tmux-navigator'

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
/          \ --ignore .svn
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

" owerline symbols
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

syntax enable
set background=dark
colorscheme Tomorrow-Night

"set listchars=eol:$,tab:>-,trail:~,extends:>,precedes:<
set listchars=tab:――,trail:•,extends:>,precedes:<
"set list

" languages to open a specific file type
au BufNewFile,BufRead,BufEnter   *.wiki    setlocal spell    spelllang=de_de
au BufNewFile,BufRead,BufEnter   *.md      setlocal spell    spelllang=en_us
" au BufNewFile,BufRead,BufEnter   *.txt     setlocal spell    spelllang=de_de
au BufNewFile,BufRead,BufEnter   README    setlocal spell    spelllang=en_us
