"w0rp/ale

"require php-codesniffer, phpstan

let g:ale_sign_column_always = 1
let g:ale_sign_error = '⚑'
let g:ale_sign_warning = '⚐' 

"{{{phpcs
let g:ale_php_phpcs_use_global = 1
let g:ale_php_phpcs_standard = 'PSR1,PSR2'
let s:phpcs_ruleset_path = getcwd() . '/../g:ruleset.xml'
let s:phpcs_exutable_path =  $HOME . '/bin/phpcs'

if g:ale_php_phpcs_use_global && !empty(glob(s:phpcs_ruleset_path))
    let g:ale_php_phpcs_standard .= ',' . s:phpcs_ruleset_path
endif

if !empty(glob(s:phpcs_exutable_path))
    let g:ale_php_phpcs_executable = s:phpcs_exutable_path
endif
"}}}

"{{{phpstan
let g:ale_php_phpstan_use_global = 1
let g:ale_php_phpstan_executable = $HOME . '/bin/phpstan'
let g:ale_php_phpstan_configuration = getcwd() . '/../phpstan.neon'
let g:ale_php_phpstan_level = 7
"}}}

let g:ale_linters = {
\   'php': ['php', 'phpstan', 'phpcs'], 
\   'python': ['flake8', 'pylint'],
\   'c': ['gcc'],
\}

"   'php': ['php', 'phpstan', 'langserver', 'phpcs'], 

let b:ale_warn_about_trailing_whitespace = 0
let g:ale_python_pylint_options = '--disable=missing-docstring'

let g:ale_lint_on_save = 1
let g:ale_lint_on_text_changed = 0
