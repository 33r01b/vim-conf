" show new lines
nmap <leader>l :set list!<CR>
set listchars=tab:▸\ ,eol:¬

"autocmd FileType c,cpp,js,php,py autocmd BufWritePre <buffer> %s/\s\+$//e

" Using tabless https://www.npmjs.com/package/standard
autocmd Filetype javascript setlocal sw=2 sts=2 expandtab
autocmd Filetype vue setlocal sw=2 sts=2 expandtab

" Plugins
source $HOME/.vim/etc/plugins/codestyle/ale.vim
source $HOME/.vim/etc/plugins/codestyle/php-doc-modded.vim

