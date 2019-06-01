source $HOME/.vim/etc/settings.vim
source $HOME/.vim/etc/codestyle.vim
source $HOME/.vim/etc/navigation.vim
source $HOME/.vim/etc/syntax.vim
source $HOME/.vim/etc/debug.vim
source $HOME/.vim/etc/build.vim
source $HOME/.vim/etc/completion.vim

" theme
source $HOME/.vim/etc/theme.vim
"let g:falcon_lightline = 1
"let g:lightline.colorscheme = 'falcon'
"let g:lightline.colorscheme = 'srcery'
let g:lightline.colorscheme = 'onedark'
"let g:falcon_background = 0
"let g:falcon_inactive = 1
packadd! onedark.vim
colorscheme onedark
highlight Normal ctermbg=NONE
highlight nonText ctermbg=NONE


au BufNewFile,BufRead *.js set filetype=javascript
autocmd FileType javascript,javascript.jsx,jsx setlocal shiftwidth=4 softtabstop=4 noexpandtab

"colorscheme default
"highlight ColorColumn ctermbg=black
"highlight NonText guifg=#4a4a59
"highlight SpecialKey guifg=#4a4a59
"highlight Folded ctermfg=242 ctermbg=NONE guifg=gold guibg=grey30
"highlight FoldColumn ctermfg=242 ctermbg=NONE guifg=tan guibg=grey30 
"highlight SpellBad cterm=underline term=reverse ctermbg=224 gui=undercurl guisp=Black

"hi CursorLine   cterm=NONE ctermbg=0 guibg=darkred guifg=white

"let $NVIM_COC_LOG_LEVEL = 'debug'
