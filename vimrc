"" GENERAL
set shell=/bin/bash
set ff=unix                       " Use Unix line endings for files.
set encoding=utf-8                " Use UTF-8 encoding for files.
set textwidth=80                  " Poses a hard text width of 80 characters.
set colorcolumn=80                " Shows a word-wrap column at 80 characters.

set expandtab                     " Turns tabs into spaces.
set shiftwidth=2                  " Indent levels are equivalent to 2 spaces.
set tabstop=2                     " Tab indents are equivalent to 2 spaces.
set breakindent                   " Word-wrap indents match the previous line.
set lbr                           " Prevents word-wrap from splitting words.

set formatoptions=tln
set formatlistpat=^\\s*[\\-\\+\\*]\\+\\s\\+

set splitbelow                    " Any new windows will be split below.
set visualbell                    " Enables a visual bell to show errors.

set showtabline=2                 " Always show active tabs.
set number                        " Enables line numbers.
set showmatch                     " Highlights matching braces.
set hlsearch                      " Highlights search results.
set clipboard+=unnamed            " Enables pasting from the system clipboard.
set backspace=indent,eol,start    " Enables backspacing like most text editors.
syntax enable                     " Enables syntax highlighting.
filetype plugin indent on

" The two settings below collectively enable English spell-checking.
set spell
set spelllang=en_us


"" PLUGINS
"  I use vim-plug to manage plugins. You should use vim-plug.sh to install it on
"  your machine if you haven't already.

call plug#begin('~/.vim/plugged')

Plug 'tomasr/molokai'

Plug 'mhinz/vim-startify'
Plug 'Yggdroot/indentLine'
Plug 'vim-airline/vim-airline'
Plug 'preservim/nerdtree'
Plug 'jistr/vim-nerdtree-tabs'
Plug 'preservim/tagbar'
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'prabirshrestha/async.vim'
Plug 'prabirshrestha/vim-lsp'
Plug 'mattn/vim-lsp-settings'
Plug 'prabirshrestha/asyncomplete.vim'
Plug 'prabirshrestha/asyncomplete-lsp.vim'

Plug 'rust-lang/rust.vim'

call plug#end()


"" COLOR SCHEME
"  Settings related to color schemes.

" Regardless of what your color scheme is, this is probably important.
if has('termguicolors')
  set termguicolors
endif

colorscheme molokai

"" BOOKMARKS
"  Bookmarks for the vim-startify plugin.

" Adds this vimrc to startify's bookmarks.
let g:startify_bookmarks = ['~/.vim/vimrc']


"" MAPPINGS
"  Custom keyboard mappings for various commands or a combination of such.

" Enter - Resets search result highlighting.
nnoremap <CR> :noh<CR><CR>

" F1 - nerdtree
nnoremap <F1> :NERDTreeTabsToggle<CR>

" F2 - tagbar
nnoremap <F2> :TagbarToggle<CR>

" F3 - LSP warning/error summary
nnoremap <F3> :LspDocumentDiagnostics<CR>

" Tab Completion for asyncomplete.vim
inoremap <expr> <Tab>   pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
inoremap <expr> <cr> pumvisible() ? asyncomplete#close_popup() . "\<cr>" : "\<cr>"


"" AUTOMATIC
"  Commands that will be executed automatically on specific events.

" Resize all windows back to equal proportions if Vim is resized.
autocmd VimResized * wincmd =


"" NERDTREE
"  Settings exclusive to NERDTree
let NERDTreeShowHidden=1


"" LANGUAGES
"  Settings exclusive to languages and language servers.

" Display LSP server errors in airline.
let g:lsp_diagnostics_echo_cursor = 1


" RUST

" Prevents Vim from adhering to the style of 4-space tabs.
let g:rust_recommended_style = 0

" Registers RLS (Rust Language Server) with vim-lsp.
if executable('rls')
    au User lsp_setup call lsp#register_server({
        \ 'name': 'rls',
        \ 'cmd': {server_info->['rustup', 'run', 'nightly', 'rls']},
        \ 'whitelist': ['rust'],
        \ })
endif 
