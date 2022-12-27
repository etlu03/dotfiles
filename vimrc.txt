set nocompatible " Use VIM settings rather than Vi settings *required*
filetype off

set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'preservim/nerdtree'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

" NERDTREE Preferences
let NERDTreeShowHidden=1
let g:NERDTreeWinPos = "left"
let g:NERDTreeWinSize=20

" vim-airline Preferences
let g:airline_theme='papercolor'
let g:airline#extensions#tabline#buffer_min_count = 2
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
map <C-B> :NERDTreeToggle<CR>


set t_Co=256
set encoding=utf-8

" Set `PaperColor` color scheme 
set background=dark
colorscheme PaperColor

syntax on

" Default to indenting 4 spaces
set tabstop=4 
set shiftwidth=4
set softtabstop=4
set expandtab
set autoindent

" Mouse support
set mouse=a

" Highlight matching braces
set showmatch 

" Show bottom rule
set ruler

" Split windows to equal size
set equalalways

" Enable comment line auto formatting
set formatoptions=croq

" Increase history
set history=10000

" Set window title to file name
set title

" Searching
set hlsearch
set ignorecase
set smartcase
set incsearch

" Never scroll off
set scrolloff=5

" Better UNIX-like autocomplete
set wildmode=longest,list

" Copy-paste from system keyboard
set clipboard=unnamed

" Don't redraw when running macros
set lazyredraw

" Visually wrap lines
set wrap

" Only wrap on `good` characters
set linebreak

" Better backspacing
set backspace=indent,eol,start

" Speed up VIM
set ttyfast

" Scrolling maintains horizontal position
set nostartofline

" Strip whitespaces from end of lines when writing to file
autocmd BufWritePre * :%s/\s\+$//e

" Buffer Preferences
let mapleader = ';'

nnoremap <Leader>1 :buffer 1<CR>
nnoremap <Leader>2 :buffer 2<CR>
nnoremap <Leader>3 :buffer 3<CR>
nnoremap <Leader>4 :buffer 4<CR>
nnoremap <Leader>5 :buffer 5<CR>
nnoremap <Leader>6 :buffer 6<CR>
nnoremap <Leader>7 :buffer 7<CR>
nnoremap <Leader>8 :buffer 8<CR>
nnoremap <Leader>9 :buffer 9<CR>
nnoremap <Leader>w :bfirst<CR>
nnoremap <Leader>s :blast<CR>
nnoremap <Leader>a :bprev<CR>
nnoremap <Leader>d :bnext<CR>

call vundle#end()

filetype plugin indent on

