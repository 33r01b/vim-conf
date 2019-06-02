## Зависимости
- python3
- nodejs
- yarn
- [fzf](https://github.com/junegunn/fzf#installation)
- [ripgrep](https://github.com/BurntSushi/ripgrep#installation)
- [translate shell](https://github.com/soimort/translate-shell)
- [ctags](https://github.com/universal-ctags/ctags)

#### PHP
- php
- composer
- [phpcs](https://github.com/squizlabs/PHP_CodeSniffer)
- [phpstan](https://github.com/phpstan/phpstan)
- [coc-phpls](https://github.com/marlonfan/coc-phpls)

##### Файлы для запуска через ~/bin
    ~/bin
    $ ls -l phpcs phpstan
    lrwxrwxrwx 1 user user 57 Apr 20 19:07 phpcs -> ~/php-linters/vendor/bin/phpcs
    lrwxrwxrwx 1 user user 46 Apr 20 16:15 phpstan -> ~/php-linters/vendor/bin/phpstan

## Установка

    $ git clone --recurse-submodules https://github.com/zeroonebeatz/vim-conf ~/.vim
    $ cd ~/.vim/plugged/vim-polyglot && ./build
    $ cd ~/.vim/pack/plugins/start/coc.nvim && ./install.sh
    $ cd ~/.vim/pack/plugins/start/markdown-preview.nvim/app && yarn install
