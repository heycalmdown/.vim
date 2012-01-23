set nocompatible
source $VIMRUNTIME/vimrc_example.vim
source $VIMRUNTIME/mswin.vim
behave mswin

set title
set autoindent
set bs=2                " allow backspacing over everything in insert mode
set viminfo='20,\"50    " read/write a .viminfo file, don't store more
set ruler               " show the cursor position all the time
set number
set background=dark
"set background=light
set softtabstop=4
set shiftwidth=4
set tabstop=4
set incsearch
set vb
set exrc
set mouse=an
set fencs=ucs-bom,utf8,cp949
set fenc=utf-8
"set enc=utf-8
set hlsearch
set lines=50
set columns=120
syntax on

set guifont=나눔고딕코딩:h12
colo solarized
"colo koehler

filetype on
filetype indent on
filetype plugin on

au BufWinLeave *.js mkview
au BufWinLeave *.py mkview
au BufWinEnter *.py silent loadview
au BufWinLeave *.c mkview
au BufWinEnter *.c silent loadview
autocmd FileType actionscript set omnifunc=actionscriptcomplete#CompleteAS

let mapleader = "\<F12>"

map <C-T> :tabnew<cr>
map <C-E> :tabclose<cr>
map <C-K> :!p4 edit %<cr>
map <C-G> :execute "vimgrep ".expand("<cword>"). " **" <Bar> cw<CR>

