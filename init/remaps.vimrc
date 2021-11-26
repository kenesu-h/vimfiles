" Escape will allow you to return to NORMAL mode in TERMINAL mode.
tnoremap <Esc> <C-\><C-n>

" Resets search result highlighting.
nnoremap <CR> :noh<CR><CR>

" n for NERDTree (or at least, originally NERDTree). Actually toggles fern.vim.
nnoremap ;n :Fern %:h -drawer -toggle<CR>

" term for opening a terminal, but opens it in a split.
nnoremap ;T :split <bar> :term<CR>

" tag for toggling Tagbar.
nnoremap ;t :TagbarToggle<CR>

" u for toggling Undotree.
nnoremap ;u :UndotreeToggle<CR>

" Tab Completion for asyncomplete.vim
" inoremap <expr> <Tab>   pumvisible() ? "\<C-n>" : "\<Tab>"
" inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
" inoremap <expr> <cr> pumvisible() ? asyncomplete#close_popup() . "\<cr>" : "\<cr>"
