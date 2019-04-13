"--Shougo/deoplete.nvim

"require gvim, python3-pip, roxma/nvim-yarp, roxma/vim-hug-neovim-rpc, neovim (pip3 install neovim)

set pyxversion=3
let g:deoplete#enable_at_startup = 1
let g:deoplete#smart_case = 1

inoremap <silent><expr> <TAB>
    \ pumvisible() ? "\<C-n>" :
    \ <SID>check_back_space() ? "\<TAB>" :
    \ deoplete#mappings#manual_complete()
function! s:check_back_space() abort "{{{
    let col = col('.') - 1
    return !col || getline('.')[col - 1]  =~ '\s'
endfunction"}}}
