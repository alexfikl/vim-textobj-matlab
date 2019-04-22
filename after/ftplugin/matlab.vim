let b:textobj_matlabblock_select = function('textobj#matlabblock#select')

" overwrite match words: matlab ends `function` with `end`, not `endfunction`
" NOTE: no need to unset b:match_words since it's already done in the
" default MATLAB plugin shipped with vim
if exists("loaded_matchit")
    let s:conditionalEnd = '\%(([^()]*\)\@!\<end\>\%([^()]*)\)\@!'
    let b:match_words =
                \ '\<\%(function\|if\|switch\|for\|while\)\>:\<\%(elseif\|case\|break\|continue\|return\|else\|otherwise\)\>:'.s:conditionalEnd
    unlet s:conditionalEnd
endif

if exists('b:undo_ftplugin')
    let b:undo_ftplugin .= '|'
else
    let b:undo_ftplugin = ''
endif

let b:undo_ftplugin .= 'unlet b:textobj_matlabblock_select'
