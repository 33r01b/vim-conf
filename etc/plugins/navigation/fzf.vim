"junegunn/fzf.vim

"require junegunn/fzf ( https://github.com/junegunn/fzf#installation )

set rtp+=~/.fzf
map ; :Files<CR>
let g:fzf_layout = { 'down': '~15%' }
" --column: Show column number
" --line-number: Show line number
" --no-heading: Do not show file headings in results
" --fixed-strings: Search term as a literal string
" --ignore-case: Case insensitive search
" --no-ignore: Do not respect .gitignore, etc...
" --hidden: Search hidden files and folders
" --follow: Follow symlinks
" --glob: Additional conditions for search (in this case ignore everything in the .git/ folder)
" --color: Search color options
command! -bang -nargs=* Find call fzf#vim#grep('rg --column --line-number --no-heading --fixed-strings --ignore-case --no-ignore --hidden --follow --glob "!.git/*" --color "always" '.shellescape(<q-args>), 1, <bang>0)

set grepprg=rg\ --vimgrep

nnoremap <silent> <F2> "zyiw:exe "Rg ".@z.""<CR>
xnoremap <silent> <F2> "zy:exe "Rg ".@z.""<CR>
