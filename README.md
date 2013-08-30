# ini-fold

Fold expression for ini-like files in which sections are denoted by `[section]`
markers. Folds can be disabled for specific file types by setting the
corresponding entry in `g:ini_fold_enabled_filetypes` to 0, e.g.

~~~ vim
let g:ini_fold_enabled_filetypes['gitconfig'] = 0
let g:ini_fold_enabled_filetypes['dosini'] = 0
~~~


## Installation

vim-ini-fold is compatible with all major plugin managers. To install it with
Vundle, add

~~~ vim
Bundle 'matze/vim-ini-fold'
~~~

to your `.vimrc`


## License

This plugin is licensed under MIT license.


