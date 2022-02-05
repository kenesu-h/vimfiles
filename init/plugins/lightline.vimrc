let g:lightline = {
  \ 'active': {
  \   'left': [ 
  \     [ 'mode', 'paste' ],
  \     [  'coc_info', 'coc_hints', 'coc_errors', 'coc_warnings', 'coc_ok' ], 
  \     [ 'gitbranch', 'readonly', 'filename', 'modified' ],
  \     [ 'coc_status'  ]
  \   ]
  \ },
  \ 'component_function': {
  \   'gitbranch': 'FugitiveHead'
  \ },
  \ }

" register compoments:
call lightline#coc#register()
