#!/bin/bash

vimdir='~/.vim'

if [ ! -d $vimdir ]
then
    echo "Directory ${vimdir} exists, backup as .vim.bak"
    mv $vimdir "${vimdir}.bak"
fi

git clone --recurse-submodules https://github.com/zeroonebeatz/vim-conf $vimdir

cd $vimdir/pack/plugins/start/vim-polyglot && ./build
cd $vimdir/pack/plugins/start/coc.nvim && ./install.sh
cd $vimdir/pack/plugins/start/markdown-preview.nvim/app && yarn install
