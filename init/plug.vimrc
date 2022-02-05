" $HOME/.vim/init/plug.vimrc

call plug#begin('~/.vim/plugged')

Plug 'srcery-colors/srcery-vim'

" Plug 'ryanoasis/vim-devicons' " Icons without colours
Plug 'lambdalisue/glyph-palette.vim'
Plug 'lambdalisue/nerdfont.vim'
Plug 'lambdalisue/fern-renderer-nerdfont.vim'

Plug 'mhinz/vim-startify'
Plug 'Yggdroot/indentLine'
Plug 'itchyny/lightline.vim'
Plug 'lambdalisue/fern.vim'
Plug 'lambdalisue/fern-git-status.vim'
Plug 'preservim/tagbar'
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
" Plug 'mbbill/undotree'

Plug 'neoclide/coc.nvim', { 'branch': 'release' }
Plug 'josa42/vim-lightline-coc'
Plug 'lervag/vimtex'

call plug#end()
