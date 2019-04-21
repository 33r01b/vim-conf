" --phpactor/ncm2-phpactor

" phpactor
let g:phpactorPhpBin = 'php'
let g:phpactorBranch = 'develop'
let g:phpactorOmniAutoClassImport = v:true
autocmd FileType php setlocal omnifunc=phpactor#Complete
let g:phpactorCompletionIgnoreCase = 0
let g:phpactorOmniError = v:true

