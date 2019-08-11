source ~/.vim/etc/settings.vim
source ~/.vim/etc/codestyle.vim
source ~/.vim/etc/navigation.vim
source ~/.vim/etc/syntax.vim
source ~/.vim/etc/debug.vim
source ~/.vim/etc/build.vim
source ~/.vim/etc/completion.vim
source ~/.vim/etc/theme.vim

" theme
let g:lightline.colorscheme = 'onedark'
let g:falcon_inactive = 1
packadd! onedark.vim
colorscheme onedark
highlight Normal ctermbg=NONE guibg=NONE
highlight SignColumn ctermbg=NONE guibg=NONE
highlight LineNr ctermbg=NONE guibg=NONE
let g:gitgutter_override_sign_column_highlight = 0

au BufNewFile,BufRead *.js set filetype=javascript
autocmd FileType javascript,javascript.jsx,jsx setlocal shiftwidth=4 softtabstop=4 noexpandtab

let $NVIM_COC_LOG_LEVEL = 'debug'

"let g:sql_type_default = 'pgsql'
"let b:sql_type_override='pgsql' | set ft=sql
"

inoremap <C-c> <Esc>
