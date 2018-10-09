set number "show line number
set nocompatible "be iMproved
set autoread "autoread when a file is changed from outside

" configuring tab key
set expandtab
" set shiftwidth=2
set shiftwidth=4
" set softtabstop=2
set softtabstop=4

" indent
"set autoindent

" search
set hlsearch "highlight search keyword
" set showmatch "highlight matched

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
" highlight color
hi Search cterm=NONE ctermfg=grey ctermbg=blue
nmap ` *N
" resizing
map + <c-w>+
map - <c-w>-
map , <c-w>>
map . <c-w><

" Pathogen load
execute pathogen#infect()
execute pathogen#helptags()
filetype plugin indent on
syntax on

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
let g:pymode_warnings = 0
let g:pymode_trim_whitespaces = 1
let g:pymode_options = 0
let g:pymode_options_max_line_length = 90
let g:pymode_options_colorcolumn = 1
let g:pymode_quickfix_minheight = 1
let g:pymode_quickfix_maxheight = 6
let g:pymode_folding = 1
let g:pymode_breakpoint = 0
let g:pymode_indent = 1
let g:pymode_run = 0
let g:pymode_rope = 0
let g:pymode_rope_goto_definition_bind = 'gd'
let g:pymode_rope_goto_definition_cmd = 'new'
let g:pymode_rope_completion = 0
let g:pymode_rope_complete_on_dot = 0
let g:pymode_rope_completion_bind = '<C-Space>'
let g:pymode_lint = 0
let g:pymode_lint_on_write = 0
let g:pymode_lint_checkers = ['pyflakes', 'mccabe']
let g:pymode_doc = 1
let g:pymode_doc_bind = 'L'

" Autoformat
noremap <F5> :Autoformat<CR>
let g:formatdef_yapf = "'yapf -l '.a:firstline.'-'.a:lastline"
let g:formatters_python = ['yapf']
let g:autoformat_verbosemode = 1

" Python folding
" mkdir -p ~/.vim/ftplugin
" wget -O ~/.vim/ftplugin/python_editing.vim http://www.vim.org/scripts/download_script.php?src_id=5492
set nofoldenable

" Vim-commentary
autocmd FileType python setlocal commentstring=#\ %s
