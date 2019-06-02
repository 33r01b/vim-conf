" show new lines
nmap <leader>l :set list!<CR>
set listchars=tab:▸\ ,eol:¬

au BufNewFile,BufRead *.js set filetype=javascript
" Using tabless https://www.npmjs.com/package/standard
autocmd Filetype javascript,vue setlocal sw=4 sts=4 expandtab

" Plugins
source ~/.vim/etc/plugins/codestyle/ale.vim
source ~/.vim/etc/plugins/codestyle/php-doc-modded.vim
