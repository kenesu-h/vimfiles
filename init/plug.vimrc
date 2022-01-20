" $HOME/.vim/init/plug.vimrc

call plug#begin('~/.vim/plugged')

Plug 'kyoz/purify', { 'rtp': 'vim' }
Plug 'sainnhe/gruvbox-material'
Plug 'srcery-colors/srcery-vim'

Plug 'ryanoasis/vim-devicons' " Icons without colours
Plug 'lambdalisue/glyph-palette.vim'
Plug 'lambdalisue/nerdfont.vim'
Plug 'lambdalisue/fern-renderer-nerdfont.vim'

Plug 'mhinz/vim-startify'
Plug 'Yggdroot/indentLine'
Plug 'vim-airline/vim-airline'
Plug 'lambdalisue/fern.vim'
Plug 'lambdalisue/fern-git-status.vim'
Plug 'preservim/tagbar'
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'mbbill/undotree'

Plug 'neoclide/coc.nvim', { 'branch': 'release' }
Plug 'lervag/vimtex'

" Plug 'prabirshrestha/async.vim'
" Plug 'prabirshrestha/vim-lsp'
" Plug 'mattn/vim-lsp-settings'
" Plug 'prabirshrestha/asyncomplete.vim'
" Plug 'prabirshrestha/asyncomplete-lsp.vim'

" Plug 'rust-lang/rust.vim'

call plug#end()
