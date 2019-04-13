"--itchyny/lightline.vim

set background=dark
let g:lightline = {
      \ 'colorscheme': 'PaperColor',
      \ 'active': {
      \   'left': [ 
      \     [ 'mode', 'paste' ],
      \     [ 'gitbranch', 'readonly', 'filename', 'modified' ] 
      \   ],
      \ },
      \ 'component_function': {
      \   'gitbranch': 'gitbranch#name',
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
