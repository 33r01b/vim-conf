nnoremap <silent> <Space> :nohl<Bar>:echo<CR>

" tab
nnoremap <C-T> :tabnew<CR>
nnoremap <C-Left> :tabprevious<CR>
nnoremap <C-Right> :tabnext<CR>
nnoremap <silent> <A-Left> :execute 'silent! tabmove ' . (tabpagenr()-2)<CR>
nnoremap <silent> <A-Right> :execute 'silent! tabmove ' . (tabpagenr()+1)<CR>

" Plugins
source $HOME/.vim/etc/plugins/navigation/fzf.vim
source $HOME/.vim/etc/plugins/navigation/grep.vim
source $HOME/.vim/etc/plugins/navigation/ale.vim
source $HOME/.vim/etc/plugins/navigation/nerdtree.vim
source $HOME/.vim/etc/plugins/navigation/easymotion.vim
source $HOME/.vim/etc/plugins/navigation/tagbar.vim
