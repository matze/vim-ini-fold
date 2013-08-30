" =============================================================================
" File: plugin/inifold.vim
" Description: Provide foldexpr for ini-like files
" Author: Matthias Vogelgesang <github.com/matze>
"
" =============================================================================
"
"{{{ Globals
if !exists('g:ini_fold_enabled_filetypes')
    let g:ini_fold_enabled_filetypes = {'gitconfig': 1, 'dosini': 1}
endif
"}}}
"{{{ Functions
function! IniFold(lnum)
    let line = getline(a:lnum)

    if line =~ '^\s*\[[^]]*\]'
        return '>1'
    endif

    return '='
endfunction

function! IniFoldActivate()
    setlocal foldmethod=expr
    setlocal foldexpr=IniFold(v:lnum)
endfunction

function! IniFoldUndo()
    if exists('b:undo_ftplugin')
      let b:undo_ftplugin .= "|setl foldexpr< foldmethod<"
    else
      let b:undo_ftplugin = "setl foldexpr< foldmethod<"
    endif
endfunction
"}}}
