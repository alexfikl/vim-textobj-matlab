if exists('g:loaded_textobj_matlabblock')
  finish
endif

" Interface
call textobj#user#plugin('matlabblock', {
\      '-': {
\           'sfile': expand('<sfile>:p'),
\           'select-a': 'am',
\           'select-a-function': 'textobj#matlabblock#select_a',
\           'select-i': 'im',
\           'select-i-function': 'textobj#matlabblock#select_i'
\      }
\    })

let g:loaded_textobj_matlabblock = 1

" vim: foldmethod=marker
