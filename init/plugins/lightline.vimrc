let g:lightline = {
  \ 'colorscheme': 'tokyonight',
  \ 'active': {
  \   'left': [ 
  \     [ 'mode', 'paste' ],
  \     [  'coc_info', 'coc_hints', 'coc_errors', 'coc_warnings', 'coc_ok' ], 
  \     [ 'gitbranch', 'readonly', 'filename', 'modified' ],
  \     [ 'coc_status'  ]
  \   ],
  \   'right': [
  \     ['mylineinfo'],
  \     ['percent'],
  \     ['fileformat', 'fileencoding', 'filetype']
  \   ],
  \ },
  \ 'component_function': {
  \   'gitbranch': 'FugitiveHead',
  \   'mylineinfo': 'MyLineInfo'
  \ },
\ }

function MyLineInfo() abort
  return line('.') . '/' . line('$') . ' ln : ' . virtcol('.')
endfunction

" register compoments:
call lightline#coc#register()
