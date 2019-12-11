if exists('b:did_ftplugin') | finish | endif
let b:did_ftplugin = 1

if g:ini_fold_enabled_filetypes['gitconfig']
    call IniFoldActivate()
endif

call IniFoldUndo()

" modeline {{{1
" vim: expandtab tabstop=4 softtabstop=4 shiftwidth=4
" vim: foldmethod=marker
