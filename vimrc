syntax on
set path+=**
set nocp
set number
set ruler
set laststatus=2
set fileencodings=utf8,cp1251
set encoding=utf8
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set smarttab
set autoindent
set smartindent
set cindent
set ai
set cin
set hlsearch
set incsearch
set ignorecase
set smartcase
set wildmenu
set wildmode=list:longest,list:full
set showcmd
set hidden
set t_Co=256
set colorcolumn=120
set clipboard+=unnamedplus
vnoremap y "+y
set relativenumber
set re=1
set ttyfast
set lazyredraw
set cursorline!
set timeoutlen=100 
set ttimeoutlen=0

let base16colorspace=256  " Access colors present in 256 colorspace
let g:powerline_pycmd="py3"

nnoremap <silent> <Space> :nohl<Bar>:echo<CR>
"set nocompatible              " be iMproved, required
"filetype off                  " required

au BufNewFile,BufRead *.yaml,*.yml so ~/.vim/yaml.vim

nnoremap <C-Left> :tabprevious<CR>
nnoremap <C-Right> :tabnext<CR>
nnoremap <silent> <A-Left> :execute 'silent! tabmove ' . (tabpagenr()-2)<CR>
nnoremap <silent> <A-Right> :execute 'silent! tabmove ' . (tabpagenr()+1)<CR>

"-- Plugins --

"airblade/vim-gitgutter
set updatetime=100

"junegunn/fzf.vim
"require junegunn/fzf ( https://github.com/junegunn/fzf#installation )
set rtp+=~/.fzf
map ; :Files<CR>

"w0rp/ale
let g:ale_sign_column_always = 1
let g:ale_sign_error = '⚑'
let g:ale_sign_warning = '⚐' 
let g:ale_linters = {
\   'php': ['php'],
\}
"let g:ale_lint_on_save = 1
"let g:ale_lint_on_text_changed = 0

"Yggdroot/indentLine
let g:indentLine_char = "│"
let g:indentLine_color_term = 239

"sheerun/vim-polyglot
let g:polyglot_disabled = ['apiblueprint', 'applescript', 'arduino', 'autohotkey', 'caddyfile']

"itchyny/lightline.vim
set background=dark
let g:lightline = {
      \ 'colorscheme': 'PaperColor',
      \ }

"vim-gutentags
"require universal-ctags/ctags ( https://github.com/universal-ctags/ctags/blob/master/docs/autotools.rst )
let g:gutentags_cache_dir = '~/.vim/gutentags'
let g:gutentags_ctags_exclude = ['*.css', '*.html', '*.js', '*.json', '*.xml',
                            \ '*.phar', '*.ini', '*.rst', '*.md',
                            \ '*vendor/*/test*', '*vendor/*/Test*',
                            \ '*vendor/*/fixture*', '*vendor/*/Fixture*',
                            \ '*var/cache*', '*var/log*']

"yegappan/grep
let Ag_Options = '-f --skip-vcs-ignores --ignore ".git" --ignore "*.min.js" --ignore "tags" --ignore-dir composer -W 100'

"search *
nnoremap <silent> <F2> :Ag <CR>

"search php
nnoremap <silent> <F3> :Ag --php <CR>

"search js, vue
nnoremap <silent> <F4> :Ag --js <CR>

let Grep_Skip_Dirs = 'RCS CVS SCCS .git'
let Grep_Skip_Files = '*~ *,v s.* *.js.min *.log'

"Shougo/deoplete.nvim
"require roxma/nvim-yarp, roxma/vim-hug-neovim-rpc, neovim (pip3 install neovim)
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

"lvht/phpcd.vim
"require run composer install in the phpcd.vim root directory.
let g:deoplete#ignore_sources = get(g:, 'deoplete#ignore_sources', {})
let g:deoplete#ignore_sources.php = ['omni']

"scrooloose/nerdtree
map <C-n> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
let NERDTreeShowHidden=1

"arnaud-lb/vim-php-namespace
" \u - Automatically adds the corresponding use statement for the name under the cursor
function! IPhpInsertUse()
    call PhpInsertUse()
    call feedkeys('a',  'n')
endfunction
autocmd FileType php inoremap <Leader>u <Esc>:call IPhpInsertUse()<CR>
autocmd FileType php noremap <Leader>u :call PhpInsertUse()<CR>

set tags+=tags,tags.vendors
let g:php_namespace_sort_after_insert = 1
