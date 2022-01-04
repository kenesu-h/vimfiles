" In your init.lua or init.vim
set termguicolors
lua << EOF
require("bufferline").setup{
  options = {
    numbers = "buffer_id"
  }
}
EOF
