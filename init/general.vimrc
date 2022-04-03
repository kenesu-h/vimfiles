" $HOME/.vim/init/general.vimrc

set background=dark
set laststatus=2
set noshowmode
set ff=unix                       " Use Unix line endings for files.
set encoding=utf-8                " Use UTF-8 encoding for files.
set textwidth=80                  " Poses a hard text width of 80 characters.
set colorcolumn=80                " Shows a word-wrap column at 80 characters.
set fillchars+=vert:\|
set signcolumn=yes

set expandtab                     " Indents are always spaces.
set shiftwidth=2                  " Indent levels are equivalent to 2 spaces.
set tabstop=2                     " Tab indents are equivalent to 2 spaces.
set breakindent                   " Word-wrap indents match the previous line.
set lbr                           " Prevents word-wrap from splitting words.

syntax enable                     " Enable syntax highlighting.
set number                        " Enables line numbers.
" set mouse=a

set showtabline=2                 " Always show active tabs.
set clipboard+=unnamed            " Enables pasting from the system clipboard.
set backspace=indent,eol,start    " Enables backspacing like most text editors.

set spell                         " Enable spell-checking.
set spelllang=en_us               " Spell-checking checks for US English.

set showmatch                     " Highlights matching braces.
set hlsearch                      " Highlights search results.

" Recognize numbered lists when formatting, and only auto-format comments.
autocmd FileType * set formatoptions=nc


" set formatlistpat=^\\s*[\\-\\+\\*]\\+\\s\\+

set splitbelow                    " New windows default to a new pane below.
