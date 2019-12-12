" =============================================================================
" File: plugin/inifold.vim
" Description: Provide foldexpr for ini-like files
" Author: Matthias Vogelgesang <github.com/matze>
"
" =============================================================================

if v:version < 700 | finish | endif

if !exists('g:ini_fold_enabled_filetypes')
  let g:ini_fold_enabled_filetypes = {
        \ 'config':    1,
        \ 'desktop':   1,
        \ 'dosini':    1,
        \ 'gitconfig': 1,
        \ }
endif

function! inifold#expr(lnum)
  let line = getline(a:lnum)

  if line =~# '^\s*\[[^]]*\]'
    return '>1'
  endif

  return '='
endfunction

function! inifold#activate()
  setlocal foldmethod=expr
  setlocal foldexpr=inifold#expr(v:lnum)
endfunction

function! inifold#undo()
  if exists('b:undo_ftplugin')
    let b:undo_ftplugin .= '|setl foldexpr< foldmethod<'
  else
    let b:undo_ftplugin = 'setl foldexpr< foldmethod<'
  endif
endfunction

" modeline {{{1
" vim: expandtab tabstop=4 softtabstop=4 shiftwidth=4
" vim: foldmethod=marker
