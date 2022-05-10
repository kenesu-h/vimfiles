" $HOME/.vim/init/general.vimrc

set ff=unix                       " Use Unix line endings for files.
set encoding=utf-8                " Use UTF-8 encoding for files.

set background=dark               " Dark background.

set laststatus=2                  " Always show the status bar.
set noshowmode                    " Hide the current mode from the status line.

set textwidth=80                  " Poses a hard text width of 80 characters.
set colorcolumn=80                " Shows a word-wrap column at 80 characters.
set nowrap                        " Text will not soft-wrap.

set fillchars+=vert:\|            " Use bar characters as vertical separators.
set signcolumn=yes                " Always display the sign column.

set autoindent                    " Always autoindent.
set breakindent                   " Word-wrap indents match the previous line.
set expandtab                     " Indents are always spaces.
set shiftwidth=2                  " Indent levels are equivalent to 2 spaces.
set tabstop=2                     " Tab indents are equivalent to 2 spaces.
set lbr                           " Prevents word-wrap from splitting words.

syntax enable                     " Enable syntax highlighting.
set number                        " Enables line numbers.

set showtabline=2                 " Always show active tabs.
set clipboard+=unnamed            " Enables pasting from the system clipboard.
set backspace=indent,eol,start    " Enables backspacing like most text editors.

set spell                         " Enable spell-checking.
set spelllang=en_us               " Spell-checking checks for US English.

set showmatch                     " Highlights matching braces.
set hlsearch                      " Highlights search results.

" Recognize numbered lists when formatting, and only auto-format comments.
autocmd FileType * set formatoptions=nc

set splitbelow                    " New splits default to a new pane below.
