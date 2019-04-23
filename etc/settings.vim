syntax on
set path+=**
set nocp
set number
set ruler
set spell
set spelllang=en,ru
set guiheadroom=0
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
set switchbuf+=usetab,newtab
set shell=/usr/bin/zsh
autocmd FileType make setlocal noexpandtab

set foldlevel=1
set foldlevelstart=1
" specifies for which commands a fold will be opened
set foldopen=block,hor,insert,jump,mark,percent,quickfix,search,tag,undo
set diffopt+=iwhite " Ignore whitespace whilst diffing
set undodir=~/.vim/.undo//
set backupdir=~/.vim/.backup//
set directory=~/.vim/.swp//

" Plugins
source $HOME/.vim/etc/plugins/settings/vimpipe.vim
source $HOME/.vim/etc/plugins/settings/vim-gitgutter.vim
source $HOME/.vim/etc/plugins/settings/lvimrc.vim


nmap ]h <Plug>GitGutterNextHunk
nmap [h <Plug>GitGutterPrevHunk
