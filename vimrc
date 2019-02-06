" Don't try to be vi compatible
set nocompatible

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'flazz/vim-colorschemes'
call vundle#end()  

colorscheme Atelier_EstuaryLight
syntax on
filetype plugin indent on
set encoding=utf-8

" Whitespace
set wrap
set textwidth=79
set formatoptions=tcqrn1
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set noshiftround
set autoindent 


" Status bar
set laststatus=2

" Last line
set showmode
set showcmd

set guifont=Menlo:h14
