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
set rtp+=~/.fzf
map ; :Files<CR>

"w0rp/ale
"let b:ale_fixers = {'php': ['hack']}
let g:ale_sign_column_always = 1
let g:ale_sign_error = '⚑'
let g:ale_sign_warning = '⚐' 

"Yggdroot/indentLine
let g:indentLine_char = "│"
let g:indentLine_color_term = 239
