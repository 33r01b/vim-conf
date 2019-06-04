" Starts an async psql job, prompting for the psql arguments.
" Also opens a scratch buffer where output from psql is directed.
noremap <leader>po :VipsqlOpenSession<CR>

" Terminates psql (happens automatically if the output buffer is closed).
noremap <silent> <leader>pk :VipsqlCloseSession<CR>

" In normal-mode, prompts for input to psql directly.
autocmd FileType sql nnoremap <leader>s :VipsqlShell<CR>

" In visual-mode, sends the selected text to psql.
autocmd FileType sql vnoremap <leader>s :VipsqlSendSelection<CR>

" Sends the selected _range_ to psql.
autocmd FileType sql noremap <leader>r :VipsqlSendRange<CR>

" Sends the current line to psql.
autocmd FileType sql noremap <leader>l :VipsqlSendCurrentLine<CR>

" Sends the entire current buffer to psql.
autocmd FileType sql noremap <leader>b :VipsqlSendBuffer<CR>

" Sends `SIGINT` (C-c) to the psql process.
autocmd FileType sql noremap <leader>c :VipsqlSendInterrupt<CR>

" Whether or not to clear the output buffer on each send.
let g:vipsql_auto_clear_enabled = 1
