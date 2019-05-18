" show new lines
nmap <leader>l :set list!<CR>
set listchars=tab:▸\ ,eol:¬

"autocmd FileType c,cpp,js,php,py autocmd BufWritePre <buffer> %s/\s\+$//e

au BufNewFile,BufRead *.js set filetype=javascript

" Using tabless https://www.npmjs.com/package/standard
autocmd Filetype javascript,vue setlocal sw=4 sts=4 expandtab

" Plugins
source ~/.vim/etc/plugins/codestyle/ale.vim
source ~/.vim/etc/plugins/codestyle/php-doc-modded.vim

