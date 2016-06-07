set number "show line number
set nocompatible "be iMproved
set autoread "autoread when a file is changed from outside

" configuring tab key
set expandtab
set shiftwidth=4
set softtabstop=4

" indent
"set autoindent

" search
set hlsearch "highlight search keyword
" set showmatch "highlight matched

" syntax highlight
syntax enable

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
nmap we <C-w>
" highlight color
hi Search cterm=NONE ctermfg=grey ctermbg=blue
nmap \ *N
" resizing
map + <c-w>+
map - <c-w>-
map , <c-w><
map . <c-w>>


" Pathogen load
execute pathogen#infect()
execute pathogen#helptags()
syntax on
filetype plugin indent on

" NERDtree
map <F2> :NERDTreeToggle<CR>

" Taglist
filetype on
let Tlist_Compact_Format=1  
let Tlist_Display_Prototype=1  
let Tlist_File_Fold_Auto_Close=1  
"let Tlist_Auto_Open=1
let Tlist_Ctags_Cmd="/usr/bin/ctags"
set tags=./tags;
nnoremap <silent> <F3> :TlistToggle<CR> 

" Python mode
let g:pymode = 0
" let g:pymode_warnings = 1
" let g:pymode_paths = []
" let g:pymode_trim_whitespaces = 1
" let g:pymode_options = 1
"
