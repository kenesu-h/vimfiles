"" GENERAL
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


"" PLUGINS
"  I use vim-plug to manage plugins. You should use vim-plug.sh to install it on your machine if you
"  haven't already.
"
"  NOTE: -> denotes that this plugin has a dependency on its parent.
"
" 'sonokai'                         The main theme I use. Can be swapped out for your preference.
" 'vim-startify'                    Provides a start screen for Vim. Handy for reloading sessions.
" 'indentLine'                      Shows a '|' character to represent indent levels using spaces.
" 'vim-airline'                     A status bar for Vim that works with many plugins.
" 'nerdtree'                        Integrates (effectively) a file browser.
" -> 'vim-nerdtree-tabs'               An addon to nerdtree where nerdtree becomes its own window.
" 'vim-fugitive'                    Integrates Git commands, and shows current branch in airline.
" 'vim-gitgutter'                   Provides indicators for Git changes.
" 'async.vim'                       An asynchronous job control API for Vim.
" 'vim-lsp'                         An asynchronous LSP (language server protocol) plugin for Vim.
" -> 'vim-lsp-settings'                Automatically configures language servers for vim-lsp.
" 'asyncomplete.vim'                An asynchronous auto-completion plugin for Vim.
" -> 'asyncomplete-lsp.vim'            Adds auto-completion for asynccomplete.vim and vim-lsp.
"
" 'rust.vim'                        Provides Rust support for Vim. 

call plug#begin('~/.vim/plugged')

Plug 'sainnhe/sonokai'
Plug 'mhinz/vim-startify'
Plug 'Yggdroot/indentLine'
Plug 'vim-airline/vim-airline'
Plug 'preservim/nerdtree'
Plug 'jistr/vim-nerdtree-tabs'
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

" Since these have to do with sonokai though, you can change these if needed.
let g:sonokai_style = 'shusia'
let g:sonokai_enable_italic = 0
let g:sonokai_disable_italic_comment = 1

colorscheme sonokai

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

" F2 - LSP warning/error summary
nnoremap <F2> :LspDocumentDiagnostics<CR>

" Tab Completion for asyncomplete.vim
inoremap <expr> <Tab>   pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
inoremap <expr> <cr> pumvisible() ? asyncomplete#close_popup() . "\<cr>" : "\<cr>"


"" AUTOMATIC
"  Commands that will be executed automatically on specific events, such as window resizing.

" Resize all windows back to equal proportions if Vim is resized.
autocmd VimResized * wincmd =



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
