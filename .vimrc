set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-surround'
Plugin 'tppoe/vim-sensible'
Plugin 'scrooloose/nerdtree'

call vundle#end()
filetype plugin indent on

scriptencoding utf-8
set encoding=utf-8

set autoindent
set backup
set nu
set smartindent
set showmatch
set textwidth=0
set wrapmargin=0
set title
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set backspace=2
set backspace=indent,eol,start
set wildmode=longest,list,full
set wildmenu
set breakindent

syntax on
set t_Co=256
colorscheme molokai
let g:rehash256=1
if &term =~ "xterm\\|rxvt"
  let &t_SI = "\<Esc>]50;CursorShape=1\x7"
  let &t_EI = "\<Esc>]50;CursorShape=0\x7"
  autocmd VimLeave * silent !echo -ne "\<Esc>]50;CursorShape=0\x7"
endif
set guicursor+=n-v-c:blinkon0
set ls=2
set incsearch
set ic
set wrap
set showcmd

set backupdir=~/.vimtmp,.
set directory=~/.vimtmp,.

let g:NERDTreeDirArrows=1
command NT NERDTreeToggle

autocmd FileType python nnoremap ,t :!clear && python %<cr>
