let s:comment_escape = '\v^[^\%]*'
let s:block_openers = '\zs(<if>|<for>|<while>|<switch>|<function>)'
let s:start_pattern = s:comment_escape . s:block_openers
let s:end_pattern = s:comment_escape . '\zs<end>'

function! textobj#matlabblock#select(object_type)
  return textobj#matlabblock#select_{a:object_type}()
endfunction

function! textobj#matlabblock#select_a()
    let s:flags = 'W'

    call searchpair(s:start_pattern, '', s:end_pattern, s:flags)
    let end_pos = getpos('.')

    " Jump to match
    normal %
    let start_pos = getpos('.')

    return ['V', start_pos, end_pos]
endfunction

function! textobj#matlabblock#select_i()
    let s:flags = 'W'
    if expand('<cword>') == 'end'
        let s:flags = 'cW'
    endif

    call searchpair(s:start_pattern, '', s:end_pattern, s:flags)

    " Move up one line, and save position
    normal k^
    let end_pos = getpos('.')

    " Move down again, jump to match, then down one line and save position
    normal j^%j
    let start_pos = getpos('.')

    return ['V', start_pos, end_pos]
endfunction
