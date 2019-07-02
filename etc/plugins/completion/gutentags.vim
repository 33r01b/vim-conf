"--vim-gutentags

"require universal-ctags/ctags ( https://github.com/universal-ctags/ctags/blob/master/docs/autotools.rst )

let g:gutentags_cache_dir = '~/.vim/gutentags'
let g:gutentags_ctags_exclude = ['*.css', '*.html', '*.js', '*.json', '*.xml',
\ '*.phar', '*.ini', '*.rst', '*.md',
\ '*vendor/*/test/*', '*vendor/*/Test/*',
\ '*vendor/*/fixture*', '*vendor/*/Fixture/*',
\ '*var/cache/*', '*var/log/*']

