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
syntax on

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
nmap O i<Enter><esc>
nmap we <C-w>
nmap \ *N
" resizing
map + <c-w>+
map - <c-w>-
map , <c-w>>
map . <c-w><

" YAML syntax highlighting
au BufNewFile,BufRead *.yaml,*.yml so ~/.vim/yaml.vim

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
Plugin 'Chiel92/vim-autoformat'
Plugin 'ervandew/supertab'
Plugin 'w0rp/ale'
" Plugin 'Valloric/YouCompleteMe'
Plugin 'vim-airline/vim-airline'
Plugin 'MattesGroeger/vim-bookmarks'
" Plugin 'honza/vim-snippets'
" Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}
" Plugin 'google/yapf', { 'rtp': 'plugins/vim' }
" Plugin 'davidhalter/jedi-vim'

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

" [google/yapf]
" noremap <F5> :YAPF<CR>
" map <C-Y> :call yapf#YAPF()<cr>
" imap <C-Y> <c-o>:call yapf#YAPF()<cr>

" [Chiel92/vim-autoformat]
au BufWrite *.py :Autoformat " Auto-format when saving a file
noremap <C-k> :Autoformat<CR>
let g:autoformat_verbosemode=1

" [SimpylFold]
nmap f za
noremap <C-U> zr
noremap <C-F> zm

" [Vim-commentary]
autocmd FileType python setlocal commentstring=#\ %s

" [jedi-vim]
" let g:jedi#force_py_version = '3.6'
" let g:jedi#goto_command = 'gd'
let g:jedi#goto_definitions_command = "gd"
let g:jedi#goto_assignments_command = "ga"
let g:jedi#rename_command = "gr"

" [w0rp/ale]
let g:ale_python_flake8_options = '--ignore=E501,W291' " Ignore line too long error
" let g:ale_python_flake8_options = '--ignore=W291' " Ignore line too long error
" ===================== End of Vundle config =======================
