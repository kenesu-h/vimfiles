set nocompatible

set ff=unix
set encoding=utf-8

set expandtab
set shiftwidth=2
set tabstop=2
set textwidth=100

set breakindent
set formatoptions=tl
set lbr

set ruler
set number
set clipboard+=unnamed
set backspace=indent,eol,start
syntax enable

call plug#begin('~/.vim/plugged')

Plug 'ayu-theme/ayu-vim'
Plug 'vim-airline/vim-airline'
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'preservim/nerdtree'

call plug#end()

set termguicolors
let ayucolor="dark"
colorscheme ayu

" IndentLine {{
let g:indentLine_char = 'Îõ'
let g:indentLine_first_char = 'Îõ'
let g:indentLine_showFirstIndentLevel = 1
let g:indentLine_setColors = 0
" }}

" Start NERDTree and put the cursor back in the other window.
autocmd VimEnter * NERDTree | wincmd p

" Exit Vim if NERDTree is the only window left.
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() |
    \ quit | endif
