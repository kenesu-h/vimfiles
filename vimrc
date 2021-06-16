"" General
set ff=unix                       " Use Unix line endings for files.
set encoding=utf-8                " Use UTF-8 encoding for files.
set textwidth=100                 " Poses a soft character limit per line to 100 characters.

set expandtab                     " Turns tabs into spaces.
set shiftwidth=2                  " Indent levels will be equivalent to 2 spaces.
set tabstop=2                     " Tab indents will be equivalent to 2 spaces.
set breakindent                   " Ensures word-wrap indents are the same as the previous line.

" The two settings below collectively ensure that word-wrap doesn't split words.
set formatoptions=tl
set lbr

set splitbelow                    " Any new windows will be split below existing ones.
set visualbell                    " Enables a visual bell to show errors instead of beeping.

set showtabline=2                 " Always show active tabs.
set number                        " Enables line numbers.
set showmatch                     " Highlights matching braces.
set hlsearch                      " Highlights search results.
set clipboard+=unnamed            " Enables pasting from the system clipboard.
set backspace=indent,eol,start    " Enables backspacing like a normal text editor.
syntax enable                     " Enables syntax highlighting.
filetype plugin indent on

" The two settings below collectively enable English spell-checking.
set spell
set spelllang=en_us


"" Mappings
" Resets search result highlighting by hitting enter.
nnoremap <CR> :noh<CR><CR>


"" Plugins
"  I use vim-plug to manage plugins. You should use vim-plug.sh to install it on your machine if you
"  haven't already.
"
" 'sonokai'                         The main theme I use. Can be swapped out for your preference.
" 'indentLine'                      Shows a '|' character to represent indent levels using spaces.
" 'vim-airline'                     A status bar for Vim that works with many plugins.
" 'nerdtree'                        Integrates (effectively) a file browser.
" 'vim-nerdtree-tabs'               An addon to nerdtree where nerdtree becomes its own window.
" 'vim-fugitive'                    Integrates Git commands, and shows current branch in airline.
" 'vim-gitgutter'                   Provides indicators for Git changes.
" 'vimcompletesme'                  A lightweight auto-complete plugin.
" A bunch of Rust plugins           A series of plugins for Rust and Cargo integration.

call plug#begin('~/.vim/plugged')

Plug 'sainnhe/sonokai'
Plug 'Yggdroot/indentLine'
Plug 'vim-airline/vim-airline'
Plug 'preservim/nerdtree'
Plug 'jistr/vim-nerdtree-tabs'
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'ajh17/vimcompletesme'

Plug 'rust-lang/rust.vim'
Plug 'prabirshrestha/async.vim'
Plug 'prabirshrestha/vim-lsp'
Plug 'mattn/vim-lsp-settings'
Plug 'prabirshrestha/asyncomplete.vim'
Plug 'prabirshrestha/asyncomplete-lsp.vim'

call plug#end()


"" Color Scheme

" Regardless of what your color scheme is, this is probably important.
if has('termguicolors')
  set termguicolors
endif

" Since these have to do with sonokai though, you can change these if needed.
let g:sonokai_style = 'andromeda'
let g:sonokai_enable_italic = 0
let g:sonokai_disable_italic_comment = 1

colorscheme sonokai


"" Language-Exclusive
let g:rust_recommended_style = 0  " Prevents Vim from adhering to the style of 4-space tabs.
let g:lsp_diagnostics_echo_cursor = 1  " When hovering over a Rust error, it's displayed under airline.

" Registers RLS (Rust Language Server) with vim-lsp.
if executable('rls')
    au User lsp_setup call lsp#register_server({
        \ 'name': 'rls',
        \ 'cmd': {server_info->['rustup', 'run', 'nightly', 'rls']},
        \ 'whitelist': ['rust'],
        \ })
endif 


"" Automatic

" Resize all windows back to equal proportions if Vim is resized.
autocmd VimResized * wincmd =

" Start nerdtree on console startup.
let g:nerdtree_tabs_open_on_console_startup = 1
