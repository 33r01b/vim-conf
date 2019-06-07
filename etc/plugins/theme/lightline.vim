"--itchyny/lightline.vim

set background=dark
let g:lightline = {
      \ 'colorscheme': 'PaperColor',
      \ 'active': {
      \   'left': [ 
      \     [ 'mode', 'paste' ],
      \     [ 'gitbranch', 'readonly', 'filename', 'modified', 'method' ] 
      \   ],
      \ },
      \ 'component_function': {
      \   'gitbranch': 'gitbranch#name',
      \   'method': 'NearestMethodOrFunction'
      \ },
      \ }

function! LightlineFilename()
  let root = fnamemodify(get(b:, 'gitbranch_path'), ':h:h')
  let path = expand('%:p')
  let filename = expand('%:t') !=# '' ? expand('%:t') : '[No Name]'
  if path[:len(root)-1] ==# root
    return winwidth(0) > 95 ? path[len(root)+1:] : filename
  endif
  return winwidth(0) > 95 ? expand('%') : filename
endfunction

function! NearestMethodOrFunction() abort
  return get(b:, 'vista_nearest_method_or_function', '')
endfunction

" By default vista.vim never run if you don't call it explicitly.
"
" If you want to show the nearest function in your statusline automatically,
" you can add the following line to your vimrc 
autocmd VimEnter * call vista#RunForNearestMethodOrFunction()
