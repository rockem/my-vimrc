" Don't try to be vi compatible
set nocompatible

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'flazz/vim-colorschemes'
Plugin 'vim-scripts/indentpython.vim'
Plugin 'vim-syntastic/syntastic'
Plugin 'nvie/vim-flake8'
Plugin 'kien/ctrlp.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}
Plugin 'w0rp/ale'
Plugin 'mhinz/vim-signify'
call vundle#end()  

" Display
set guifont=Source\ Code\ Pro\ for\ Powerline:h14
set guioptions=c
colorscheme Atelier_EstuaryLight
set encoding=utf-8
set splitbelow
set splitright
syntax on
filetype plugin indent on
set number
set relativenumber  
highlight Normal guifg=#363636
let g:powerline_pycmd = 'py3'

" Status bar
set laststatus=2

" Last line
set showmode
set showcmd

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

" Keys
map <C-n> :NERDTreeToggle<CR>

" Yaml
autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab

" Web
" au BufNewFile,BufRead *.js, *.html, *.css
"   \ set tabstop=2
"   \ set softtabstop=2
"   \ set shiftwidth=2

autocmd FileType javascript set formatprg=prettier\ --stdin

" Python
let NERDTreeIgnore=['\.pyc$', '\~$'] "ignore files in NERDTree

au BufNewFile,BufRead *.py
    \ set tabstop=4
    \ set softtabstop=4
    \ set shiftwidth=4
    \ set textwidth=79
    \ set expandtab
    \ set autoindent
    \ set fileformat=unix

let python_highlight_all=1
