" search
nnoremap <silent> <Leader>c :nohl<Bar>:echo<CR>

" tab
nnoremap <C-T> :tabnew<CR>
nnoremap <Tab> :tabprevious<CR>
nnoremap <S-Tab> :tabnext<CR>
nnoremap <silent> <C-Left> :execute 'silent! tabmove ' . (tabpagenr()-2)<CR>
nnoremap <silent> <C-Right> :execute 'silent! tabmove ' . (tabpagenr()+1)<CR>


" buffer
"nmap <silent> <F9> :ToggleBufExplorer<CR>
nmap <silent> <leader>w :ToggleBufExplorer<CR>
let g:bufExplorerReverseSort=0
let g:bufExplorerShowRelativePath=1
let g:bufExplorerSplitRight=1

" Plugins
source ~/.vim/etc/plugins/navigation/fzf.vim
source ~/.vim/etc/plugins/navigation/nerdtree.vim
source ~/.vim/etc/plugins/navigation/easymotion.vim
source ~/.vim/etc/plugins/navigation/vista.vim

" fast move
noremap <S-l> 4l
noremap <S-h> 4h
noremap <S-j> 4j
noremap <S-k> 4k
 
" fast window jump
noremap <C-l> <C-w>l
noremap <C-h> <C-w>h
noremap <C-j> <C-w>j
noremap <C-k> <C-w>k
