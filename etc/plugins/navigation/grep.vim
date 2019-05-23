"--yegappan/grep

let Ag_Options = '-f --skip-vcs-ignores --ignore ".git" --ignore "*.min.js" --ignore "tags" --ignore-dir composer -W 100'
let Rg_Options = '--ignore-case --follow --no-ignore --hidden -M100'

"search ignore case
nnoremap <silent> <F1> :exe ":Rg --follow --hidden -M100 --ignore-file.git"<CR>
nnoremap <silent> <F2> :exe ":Rg --ignore-case --follow --no-ignore --hidden -M100"<CR>
"search js, vue
"nnoremap <silent> <F4> :Ag --js <CR>

let Grep_Skip_Dirs = 'RCS CVS SCCS .git'
let Grep_Skip_Files = '*~ *,v s.* *.js.min *.log'
