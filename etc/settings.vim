syntax on

set ai
set autoindent
set backspace=2
set cin
set cindent
set clipboard+=unnamedplus
set colorcolumn=120
set cursorline!
set encoding=utf8
set expandtab
set fileencodings=utf8,cp1251
set foldmethod=indent
set hidden
set hlsearch
set ignorecase
set incsearch
set laststatus=2
set lazyredraw
set mousehide
set nocp
set number
set path+=**
set re=1
set regexpengine=1
"set relativenumber
set ruler
set scrolloff=10
set shell=/usr/bin/zsh
set shiftwidth=4
set showcmd
set smartcase
set smartindent
set smarttab
set softtabstop=4
set spell
set spelllang=en,ru
set switchbuf+=usetab,newtab
set synmaxcol=200
set t_Co=256
set tabstop=4
set timeoutlen=100 
set ttimeoutlen=0
set ttyfast
set ttyfast
set wildmenu
set wildmode=list:longest,list:full
" specifies for which commands a fold will be opened
set foldlevel=1
set foldlevelstart=1
set foldopen=block,hor,insert,jump,mark,percent,quickfix,search,tag,undo
set diffopt+=iwhite " Ignore whitespace whilst diffing
set undodir=~/.vim/.undo//
set backupdir=~/.vim/.backup//
set directory=~/.vim/.swp//
set ssop-=options " do not store global and local values in a session
set ssop-=folds " do not store folds

map <Space> <Leader>
vnoremap y "+y

filetype on
filetype plugin on
filetype plugin indent on
autocmd FileType make setlocal noexpandtab

" Plugins
source ~/.vim/etc/plugins/settings/vimpipe.vim
source ~/.vim/etc/plugins/settings/vim-gitgutter.vim
source ~/.vim/etc/plugins/settings/lvimrc.vim
source ~/.vim/etc/plugins/settings/session.vim
