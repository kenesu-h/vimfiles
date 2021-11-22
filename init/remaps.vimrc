tnoremap <Esc> <C-\><C-n>
" Escape will allow you to return to NORMAL mode in TERMINAL mode.

nnoremap <CR> :noh<CR><CR>
" Resets search result highlighting.

nnoremap ;n :Fern %:h -drawer -toggle<CR>
" n for NERDTree (or at least, originally NERDTree). Actually toggles fern.vim.

nnoremap ;term :split<CR> :term<CR>
" term for opening a terminal, but opens it in a split.

nnoremap ;tag :TagbarToggle<CR>
" tag for toggling Tagbar.

nnoremap ;u :UndotreeToggle<CR>
" u for toggling Undotree.

" Tab Completion for asyncomplete.vim
" inoremap <expr> <Tab>   pumvisible() ? "\<C-n>" : "\<Tab>"
" inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
" inoremap <expr> <cr> pumvisible() ? asyncomplete#close_popup() . "\<cr>" : "\<cr>"
