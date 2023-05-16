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

set background=dark
colorscheme desert

call plug#begin()
Plug 'preservim/nerdtree'
Plug 'jiangmiao/auto-pairs'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'airblade/vim-gitgutter'
call plug#end()

inoremap <c-n> <Esc>:NERDTreeToggle<cr>
nnoremap <c-n> <Esc>:NERDTreeToggle<cr>

" let g:indent_guides_enable_on_vim_startup = 1
let g:indent_guides_start_level = 1
let g:indent_guides_guide_size = 1

inoremap <Leader>i <Esc>:IndentGuidesToggle<cr>
nnoremap <Leader>i <Esc>:IndentGuidesToggle<cr>

" gitgutter
" Use fontawesome icons as signs
let g:gitgutter_sign_added = '+'
let g:gitgutter_sign_modified = '>'
let g:gitgutter_sign_removed = '-'
let g:gitgutter_sign_removed_first_line = '^'
let g:gitgutter_sign_modified_removed = '<'

" Update sign column every quarter second
set updatetime=250

let g:gitgutter_override_sign_column_highlight = 1
highlight clear SignColumn
" highlight SignColumn guibg=black
" highlight SignColumn ctermbg=black

" Jump between hunks
" git next
nmap <Leader>gn <Plug>(GitGutterNextHunk) 
" git previous
nmap <Leader>gp <Plug>(GitGutterPrevHunk)

" Hunk-add and hunk-revert for chunk staging
" git add (chunk)
nmap <Leader>ga <Plug>(GitGutterStageHunk)
" git undo (chunk)
nmap <Leader>gu <Plug>(GitGutterUndoHunk)
