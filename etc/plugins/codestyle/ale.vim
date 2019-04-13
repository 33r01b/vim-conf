"w0rp/ale

"require php-codesniffer

let g:ale_sign_column_always = 1
let g:ale_sign_error = '⚑'
let g:ale_sign_warning = '⚐' 
let g:ale_php_phpcs_standard = 'PSR2'
let g:ale_linters = {
\   'php': ['php', 'langserver', 'phpcs'], 
\   'python': ['flake8', 'pylint'],
\   'c': ['gcc'],
\}
"'php', 'phpmd', 'phpcs'
let g:ale_php_phpmd_ruleset = 'cleancode,codesize,controversial,design,naming,unusedcode'
" Disable warnings about trailing whitespace for Python files.
let b:ale_warn_about_trailing_whitespace = 0
let g:ale_python_pylint_options = '--disable=missing-docstring'

let g:ale_lint_on_save = 1
let g:ale_lint_on_text_changed = 0
