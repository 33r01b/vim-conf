" --phpactor/ncm2-phpactor

" phpactor
let g:phpactorPhpBin = 'php'
let g:phpactorBranch = 'develop'
let g:phpactorOmniAutoClassImport = v:true
autocmd FileType php setlocal omnifunc=phpactor#Complete
let g:phpactorCompletionIgnoreCase = 0
let g:phpactorOmniError = v:true
" CTRL-C doesn't trigger the InsertLeave autocmd . map to <ESC> instead.
inoremap <c-c> <ESC>

autocmd FileType php,inc nnoremap <silent> <F3> :call phpactor#GotoDefinition()<CR>
autocmd FileType php,inc nnoremap <silent> <F4> :call phpactor#FindReferences()<CR>
autocmd FileType php,inc nnoremap <silent> <F5> :call phpactor#ContextMenu()<CR>
" Include use statement
autocmd FileType php,inc nmap <Leader>u :call phpactor#UseAdd()<CR>
" Show brief information about the symbol under the cursor
autocmd FileType php,inc nmap <Leader>h :call phpactor#Hover()<CR>
" Invoke the navigation menu
autocmd FileType php,inc nmap <Leader>n :call phpactor#Navigate()<CR>
" TODO Transform the classes in the current file 
autocmd FileType php,inc !command transform :call phpactor#Transform()<CR>
