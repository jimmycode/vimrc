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
