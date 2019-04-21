let b:textobj_matlabblock_select = function('textobj#matlabblock#select_i');

if exists('b:undo_ftplugin')
  let b:undo_ftplugin .= '|'
else
  let b:undo_ftplugin = ''
endif

let b:undo_ftplugin .= 'unlet b:textobj_matlabblock_select'
