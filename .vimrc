set tabstop=4
set shiftwidth=4
set expandtab
set smarttab

set hlsearch

" Personal Changes
set mouse=a " Enable Mouse Input
set showcmd " Show (partial) command in status line
set number " Show line numbers
set showmatch " Highlight brackets
set ignorecase " Ignore case while searching...
set smartcase " unless search contains a capital
set autoindent " Automatically indent
set textwidth=79 " Max width
set formatoptions=c,q,r,t " Formatting options
set background=dark " Use colors for a dark terminal
set undodir=/root/.vim/udo
set undofile
let g:solarized_termcolors=256

"+clipboard +xterm_clipboard +X11

" Vundle Below!
"
set nocompatible              " be iMproved, required
filetype off                  " required
let g:mapleader="," " Used in NERD Commenter

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" Keep Plugin commands between vundle#begin/end.
Plugin 'the-NERD-commenter'
Plugin 'tpope/vim-fugitive'
Bundle 'Floobits/floobits-vim'

call vundle#end()            " required
filetype plugin indent on    " required

syn on
" End Vundle

" Colorsceme must be set after loaded 
colorscheme slate

set statusline=%<%f\ %h%m%r%{fugitive#statusline()}%=%-14.(%l,%c%V%)\ %P

