
" Plugins
source ~/.vim/etc/plugins/syntax/polyglot.vim
source ~/.vim/etc/plugins/syntax/spell.vim
source ~/.vim/etc/plugins/syntax/translate-shell.vim

au BufNewFile,BufRead *.todo set filetype=config
au BufNewFile,BufRead *.yaml,*.yml so ~/.vim/yaml.vim
au BufNewFile,BufRead *.js set filetype=javascript
autocmd FileType javascript,javascript.jsx,jsx setlocal shiftwidth=4 softtabstop=4 noexpandtab

"let g:sql_type_default = 'pgsql'
"let b:sql_type_override='pgsql' | set ft=sql
