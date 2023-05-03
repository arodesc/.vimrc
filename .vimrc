syntax on
filetype plugin indent on

" Avoid compatibility with older versions
set nocompatible

set tabstop=4
set expandtab
set softtabstop=4
set shiftwidth=4
set autoindent
set smartindent

set mouse=r
set title
" set cursorline
set encoding=utf-8

set textwidth=120
set number
set showmatch

call plug#begin()
Plug 'preservim/nerdtree'
Plug 'jiangmiao/auto-pairs'
call plug#end()

inoremap <c-b> <Esc>:NERDTreeToggle<cr>
nnoremap <c-b> <Esc>:NERDTreeToggle<cr>
