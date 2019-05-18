" search
nnoremap <silent> <Leader>c :nohl<Bar>:echo<CR>

" tab
nnoremap <C-T> :tabnew<CR>
nnoremap <Tab> :tabprevious<CR>
nnoremap <S-Tab> :tabnext<CR>
nnoremap <silent> <C-Left> :execute 'silent! tabmove ' . (tabpagenr()-2)<CR>
nnoremap <silent> <C-Right> :execute 'silent! tabmove ' . (tabpagenr()+1)<CR>


" buffer
nmap <silent> <F9> :ToggleBufExplorer<CR>
let g:bufExplorerReverseSort=0
let g:bufExplorerShowRelativePath=1
let g:bufExplorerSplitRight=1

" Plugins
source ~/.vim/etc/plugins/navigation/fzf.vim
source ~/.vim/etc/plugins/navigation/nerdtree.vim
source ~/.vim/etc/plugins/navigation/easymotion.vim
source ~/.vim/etc/plugins/navigation/tagbar.vim

" fast move
noremap <C-l> 4l
noremap <C-h> 4h
noremap <C-j> 4j
noremap <C-k> 4k
