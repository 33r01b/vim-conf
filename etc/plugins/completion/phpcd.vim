"--lvht/phpcd.vim

"require run composer install in the phpcd.vim root directory.

let g:deoplete#ignore_sources = get(g:, 'deoplete#ignore_sources', {})
let g:deoplete#ignore_sources.php = ['omni']
