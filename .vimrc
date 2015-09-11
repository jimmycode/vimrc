set number "show line number
set nocompatible "be iMproved
set autoread "autoread when a file is changed from outside

" configuring tab key
set expandtab
set shiftwidth=4
set softtabstop=4

" indent
set autoindent

" search
set hlsearch "highlight search keyword
" set showmatch "highlight matched

" syntax highlight
syntax enable
syntax on

" customized commands
let mapleader=";"
nmap <leader> :
" move faster
nmap <Space> jjjjj
nmap <Enter> kkkkk
imap jj <esc>
nmap s i<Space><esc>
nmap 4 $
" nmap <tab> i<tab><esc>
nmap K i<Enter><esc>

autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
autocmd FileType css set omnifunc=csscomplete#CompleteCSS

" Vundle plugin manager
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
call vundle#begin('~/.vim/bundle/')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
Plugin 'L9'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/syntastic'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'vim-scripts/tComment'
Plugin 'vim-scripts/HTML-AutoCloseTag'
Plugin 'tpope/vim-surround'
Plugin 'jiangmiao/auto-pairs'

" add this line to your .vimrc file
Plugin 'mattn/emmet-vim'

" Autoformater
Plugin 'Chiel92/vim-autoformat'
let g:formatterpath=['/usr/local/bin/tidy', '/usr/local/bin/autopep8', '/usr/local/bin/js-beautify']
nmap <C-K><C-D> :Autoformat<CR>

" Snipmate
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'garbas/vim-snipmate'
" Optional:
Plugin 'honza/vim-snippets'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
"
