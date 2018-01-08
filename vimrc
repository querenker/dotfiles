set encoding=utf-8
set termencoding=utf-8

set t_Co=256

let mapleader = ","

set nocompatible              " be iMproved, required
filetype off                  " required

call plug#begin('~/.vim/plugged')

" color scheme
Plug 'altercation/vim-colors-solarized'
Plug 'tomasr/molokai'
Plug 'morhetz/gruvbox'
Plug 'blerins/flattown'
Plug 'trusktr/seti.vim'
Plug 'akmassey/vim-codeschool'
Plug 'chriskempson/base16-vim'
Plug 'nanotech/jellybeans.vim'
Plug 'NLKNguyen/papercolor-theme'
Plug 'chriskempson/vim-tomorrow-theme'
Plug '29decibel/codeschool-vim-theme'
Plug 'whatyouhide/vim-gotham'
Plug 'ajh17/Spacegray.vim'
Plug 'jnurmine/Zenburn'
Plug 'rizzatti/dash.vim'

" Keep Plug commands between vundle#begin/end.
" plugin on GiHub repo
Plug 'tpope/vim-fugitive'
Plug 'kien/ctrlp.vim'
Plug 'bling/vim-airline'
Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-surround'
Plug 'Townk/vim-autoclose'
Plug 'scrooloose/nerdcommenter'
Plug 'Lokaltog/vim-easymotion'
Plug 'mhinz/vim-startify'
" Plug 'Yggdroot/indentLine'
Plug 'Railscasts-Theme-GUIand256color'
"Plug 'hallison/vim-markdown'
""Plug 'jplaut/vim-arduino-ino'
""Plug 'spf13/snipmate-snippets'
""Plug 'nathanaelkane/vim-indent-guides'
""Plug 'rstacruz/sparkup'
""Plug 'davidhalter/jedi-vim'
"Plug 'Valloric/YouCompleteMe'
Plug 'christoomey/vim-tmux-navigator'
"Plug 'tpope/vim-fireplace'
"Plug 'guns/vim-clojure-highlight'
"Plug 'scrooloose/syntastic'

call plug#end()

set runtimepath^=~/.vim/bundle/ctrlp.vim

let g:ctrlp_cache_dir = $HOME . '/.cache/ctrlp'

" Synaptics
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=n('~/.vim/plugged')*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

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
"set listchars=tab:――,trail:•,extends:>,precedes:<
"set list

set clipboard=unnamed

" disable latex symbols
let g:tex_conceal = ""


:let g:syntastic_loc_list_height=5

autocmd CompleteDone * pclose

" languages to open a specific file type
" au BufNewFile,BufRead,BufEnter   *.wiki    setlocal spell    spelllang=de_de
" au BufNewFile,BufRead,BufEnter   *.md      setlocal spell    spelllang=en_us
" au BufNewFile,BufRead,BufEnter   *.txt     setlocal spell    spelllang=de_de
" au BufNewFile,BufRead,BufEnter   README    setlocal spell    spelllang=en_us
