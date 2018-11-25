set number "show line number
set nocompatible "be iMproved
set autoread "autoread when a file is changed from outside

" configuring tab key
set expandtab
" set shiftwidth=2
set shiftwidth=4
" set softtabstop=2
set softtabstop=4
" allow backspace on everything
set backspace=indent,eol,start
" dispaly current column
set ruler

" indent
" set autoindent

" search
set hlsearch "highlight search keyword
set showmatch "highlight matched

" syntax highlight
syntax enable

" color scheme
" color desert

" customized commands
let mapleader=";"
nmap <leader> :
" move faster
nmap <Space> jjjjj
nmap <Enter> kkkkk
imap jj <esc>
nmap s i<Space><esc>
nmap 4 $
nmap 3 ^
nmap 9 %
" nmap <tab> i<tab><esc>
nmap K i<Enter><esc>
nmap we <C-w>
nmap \ *N
" resizing
map + <c-w>+
map - <c-w>-
map , <c-w>>
map . <c-w><

" ===================== Vundle config =======================
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-commentary'
Plugin 'tmhedberg/SimpylFold'
"Plugin 'Chiel92/vim-autoformat'
Plugin 'google/yapf', { 'rtp': 'plugins/vim' }

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

noremap <F5> :YAPF<CR>
" map <C-Y> :call yapf#YAPF()<cr>
" imap <C-Y> <c-o>:call yapf#YAPF()<cr>

" SimpylFold
nmap f za
noremap <C-U> zr
noremap <C-F> zm

" Vim-commentary
autocmd FileType python setlocal commentstring=#\ %s
