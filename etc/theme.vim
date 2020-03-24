let base16colorspace=256  " Access colors present in 256 colorspace
let g:powerline_pycmd="py3"

" Plugins
source ~/.vim/etc/plugins/theme/indentline.vim
source ~/.vim/etc/plugins/theme/lightline.vim

" theme
packadd! onedark.vim
colorscheme onedark
let g:lightline = { 'colorscheme': 'onedark' }


if exists('+termguicolors')
  let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
  let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
  set termguicolors
endif

"hi CursorLine cterm=NONE ctermbg=NONE ctermfg=NONE guibg=gray17 guifg=NONE
"hi CursorColumn cterm=NONE ctermbg=NONE ctermfg=NONE guibg=NONE guifg=NONE
"hi ColorColumn cterm=NONE ctermbg=NONE ctermfg=NONE guibg=gray17 guifg=OrangeRed2
hi Folded cterm=NONE ctermbg=NONE ctermfg=NONE guibg=NONE guifg=gray34

"Golang
let g:go_highlight_operators = 1
let g:go_highlight_extra_types = 1
let g:go_highlight_functions = 1
let g:go_highlight_function_parameters = 1
let g:go_highlight_function_calls = 1
let g:go_highlight_types = 1
let g:go_highlight_fields = 1
let g:go_highlight_build_constraints = 1
let g:go_highlight_generate_tags = 1












"====++++++++++++++++==========================================================================================================

"highlight Normal ctermbg=NONE guibg=NONE
"highlight SignColumn ctermbg=NONE guibg=NONE
"highlight LineNr ctermbg=NONE guibg=NONE
" let g:gitgutter_override_sign_column_highlight = 0
