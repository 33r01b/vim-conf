"--arnaud-lb/vim-php-namespace

" \u - Automatically adds the corresponding use statement for the name under the cursor

function! IPhpInsertUse()
    call PhpInsertUse()
    call feedkeys('a',  'n')
endfunction
autocmd FileType php inoremap <Leader>u <Esc>:call IPhpInsertUse()<CR>
autocmd FileType php noremap <Leader>u :call PhpInsertUse()<CR>
set tags+=tags,tags.vendors
let g:php_namespace_sort_after_insert = 1
