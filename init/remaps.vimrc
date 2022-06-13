let mapleader = " "

" Escape will allow you to return to NORMAL mode in TERMINAL mode.
tnoremap <Esc> <C-\><C-n>

" Resets search result highlighting.
nnoremap <CR> :noh<CR><CR>

" n for NERDTree (or at least, originally NERDTree). Actually toggles fern.vim.
nnoremap <leader>n :Fern %:h -drawer -toggle<CR>

" term for opening a terminal, but opens it in a split.
nnoremap <leader>t :term<CR>

" tag for toggling Tagbar.
nnoremap <leader>e :CocDiagnostics<CR>

nnoremap <leader>g :Git<CR>

" Tab Completion for asyncomplete.vim
" inoremap <expr> <Tab>   pumvisible() ? "\<C-n>" : "\<Tab>"
" inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
" inoremap <expr> <cr> pumvisible() ? asyncomplete#close_popup() . "\<cr>" : "\<cr>"

" Snippet below thanks to https://superuser.com/a/321726
" delete without yanking
nnoremap <leader>d "_d
vnoremap <leader>d "_d

" replace currently selected text with default register
" without yanking it
vnoremap <leader>p "_dP

" https://vi.stackexchange.com/a/10424
" hardwraptoggle
command HardWrapToggle if &fo =~ 't' | set fo-=t | else | set fo+=t | endif
nnoremap <leader>i :HardWrapToggle<CR>
