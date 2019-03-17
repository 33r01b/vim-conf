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
set foldmethod=indent
set mousehide
set scrolloff=10
set backspace=2
set ttyfast
set regexpengine=1
set synmaxcol=200
autocmd FileType make setlocal noexpandtab

nmap <leader>l :set list!<CR>
set listchars=tab:▸\ ,eol:¬

set foldlevel=1
set foldlevelstart=1
" specifies for which commands a fold will be opened
set foldopen=block,hor,insert,jump,mark,percent,quickfix,search,tag,undo
autocmd BufEnter *\[VimPipe\] :setlocal nofen "disable folding for VimPipe

set diffopt+=iwhite " Ignore whitespace whilst diffing

set undodir=~/.vim/.undo//
set backupdir=~/.vim/.backup//
set directory=~/.vim/.swp//

" Using tabless https://www.npmjs.com/package/standard
autocmd Filetype javascript setlocal sw=2 sts=2 expandtab
autocmd Filetype vue setlocal sw=2 sts=2 expandtab

"----TEST
"set nocursorline
"set nocursorcolumn
"set norelativenumber
"----

let base16colorspace=256  " Access colors present in 256 colorspace
let g:powerline_pycmd="py3"

nnoremap <silent> <Space> :nohl<Bar>:echo<CR>
"set nocompatible              " be iMproved, required
"filetype off                  " required

au BufNewFile,BufRead *.yaml,*.yml so ~/.vim/yaml.vim

nnoremap <C-T> :tabnew<CR>
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
let g:fzf_layout = { 'down': '~15%' }

"w0rp/ale
"require apt install php-codesniffer
let g:ale_sign_column_always = 1
let g:ale_sign_error = '⚑'
let g:ale_sign_warning = '⚐' 
let g:ale_php_phpcs_standard = 'PSR2'
let g:ale_linters = {
\   'php': ['php', 'phpmd', 'phpcs'],
\   'python': ['flake8', 'pylint'],
\   'c': ['gcc'],
\}
let g:ale_php_phpmd_ruleset = 'cleancode,codesize,controversial,design,naming,unusedcode'
" Disable warnings about trailing whitespace for Python files.
let b:ale_warn_about_trailing_whitespace = 0
let g:ale_python_pylint_options = '--disable=missing-docstring'

let g:ale_lint_on_save = 1
let g:ale_lint_on_text_changed = 0

"Yggdroot/indentLine
let g:indentLine_char = "│"
let g:indentLine_color_term = 239

"--sheerun/vim-polyglot
let g:polyglot_disabled = ['apiblueprint', 'applescript', 'arduino', 'autohotkey', 'caddyfile']
"disabled slowly regex ( https://github.com/StanAngeloff/php.vim#configuration )
let g:vue_disable_pre_processors = 1
let g:php_html_load=0
let g:php_html_in_heredoc=0
let g:php_html_in_nowdoc=0
let g:php_sql_query=0
let g:php_sql_heredoc=0
let g:php_sql_nowdoc=0


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

"--vim-gutentags
"require universal-ctags/ctags ( https://github.com/universal-ctags/ctags/blob/master/docs/autotools.rst )
let g:gutentags_cache_dir = '~/.vim/gutentags'
let g:gutentags_ctags_exclude = ['*.css', '*.html', '*.js', '*.json', '*.xml',
                            \ '*.phar', '*.ini', '*.rst', '*.md',
                            \ '*vendor/*/test*', '*vendor/*/Test*',
                            \ '*vendor/*/fixture*', '*vendor/*/Fixture*',
                            \ '*var/cache*', '*var/log*']

"--yegappan/grep
let Ag_Options = '-f --skip-vcs-ignores --ignore ".git" --ignore "*.min.js" --ignore "tags" --ignore-dir composer -W 100'

"search *
nnoremap <silent> <F2> :Ag<CR>
"search php
nnoremap <silent> <F3> :Ag --php <CR>
"search js, vue
"nnoremap <silent> <F4> :Ag --js <CR>

let Grep_Skip_Dirs = 'RCS CVS SCCS .git'
let Grep_Skip_Files = '*~ *,v s.* *.js.min *.log'

"--Shougo/deoplete.nvim
"require apt install vim-gtk, apt install python3-pip, roxma/nvim-yarp, roxma/vim-hug-neovim-rpc, neovim (pip3 install neovim)
"pip3 install greenlet==0.4.10
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

"--lvht/phpcd.vim
"require run composer install in the phpcd.vim root directory.
let g:deoplete#ignore_sources = get(g:, 'deoplete#ignore_sources', {})
let g:deoplete#ignore_sources.php = ['omni']

"--scrooloose/nerdtree
map <C-n> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
let NERDTreeShowHidden=1

"--arnaud-lb/vim-php-namespace
" \u - Automatically adds the corresponding use statement for the name under the cursor
function! IPhpInsertUse()
    call PhpInsertUse()
    call feedkeys('a',  'n')
endfunction
autocmd FileType php inoremap <Leader>u <Esc>:call IPhpInsertUse()<CR>
autocmd FileType php noremap <Leader>u :call PhpInsertUse()<CR>

set tags+=tags,tags.vendors
let g:php_namespace_sort_after_insert = 1

"--easymotion/vim-easymotion
let g:EasyMotion_do_mapping = 0 " Disable default mappings
map  / <Plug>(easymotion-sn)
map <Leader> <Plug>(easymotion-prefix)
" <Leader>f{char} to move to {char}
map  <Leader>f <Plug>(easymotion-bd-f)
nmap <Leader>f <Plug>(easymotion-overwin-f)
" Jump to anywhere you want with minimal keystrokes, with just one key binding.
" `s{char}{label}`
"nmap s <Plug>(easymotion-overwin-f)
" or
" `s{char}{char}{label}`
" Need one more keystroke, but on average, it may be more comfortable.
nmap s <Plug>(easymotion-overwin-f2)
" Turn on case insensitive feature
let g:EasyMotion_smartcase = 1
" JK motions: Line motions
map <Leader>j <Plug>(easymotion-j)
map <Leader>k <Plug>(easymotion-k)

"--tpope/vim-commentary
"https://github.com/tpope/vim-commentary/blob/master/doc/commentary.txt


"--arnaud-lb/vim-php-namespace
"I have the following mapping to insert the use statements:
function! IPhpInsertUse()
    call PhpInsertUse()
    call feedkeys('a',  'n')
endfunction
autocmd FileType php inoremap <Leader>u <Esc>:call IPhpInsertUse()<CR>
autocmd FileType php noremap <Leader>u :call PhpInsertUse()<CR>

"and this one for expanding classes to get their fully qualified names:
function! IPhpExpandClass()
    call PhpExpandClass()
    call feedkeys('a', 'n')
endfunction
autocmd FileType php inoremap <Leader>e <Esc>:call IPhpExpandClass()<CR>
autocmd FileType php noremap <Leader>e :call PhpExpandClass()<CR>

"I also let it to automatically sort the namespaces after inserting:
let g:php_namespace_sort_after_insert=1


"Invisible character colors
highlight NonText guifg=#4a4a59
highlight SpecialKey guifg=#4a4a59

"colorscheme zmrok
colorscheme default

"--majutsushi/tagbar
let g:tagbar_sort = 0 "disable alpha sort by default 
nmap <F8> :TagbarToggle<CR>


"--Rip-Rip/clang_complete
let g:clang_library_path='/usr/lib/libclang.so'

set makeprg=make\ -C\ ../build\ -j9
nnoremap <F4> :make!<cr>

highlight ColorColumn ctermbg=black

let g:vdebug_keymap = {
\    "run" : "<Leader>/",
\    "run_to_cursor" : "<S-Down>",
\    "step_over" : "<S-Up>",
\    "step_into" : "<S-Left>",
\    "step_out" : "<S-Right>",
\    "close" : "q",
\    "detach" : "<F7>",
\    "set_breakpoint" : "<Leader>s",
\    "eval_visual" : "<Leader>e"
\}

let g:localvimrc_whitelist=['/home/'. $USER .'/langs/php/']
