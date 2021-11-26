" $HOME/.vim/init/general.vimrc

set ff=unix                       " Use Unix line endings for files.
set encoding=utf-8                " Use UTF-8 encoding for files.
set textwidth=80                  " Poses a hard text width of 80 characters.
set colorcolumn=80                " Shows a word-wrap column at 80 characters.
set fillchars+=vert:\ 

set expandtab                     " Indents are always spaces.
set shiftwidth=2                  " Indent levels are equivalent to 2 spaces.
set tabstop=2                     " Tab indents are equivalent to 2 spaces.
set breakindent                   " Word-wrap indents match the previous line.
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

set formatoptions=tln
" Does the following (cited from vimdoc):
" - t: Auto-wrap text using textwidth.
" - l: Long lines are not broken in insert mode.
" - n: When formatting text, recognize numbered lists.

" set formatlistpat=^\\s*[\\-\\+\\*]\\+\\s\\+

set splitbelow                    " New windows default to a new pane below.

" Regardless of what your color scheme is, this is probably important.
if has('termguicolors')
  set termguicolors
endif

colorscheme gruvbox-material
