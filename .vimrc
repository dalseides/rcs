syntax on
set expandtab
set ts=4
set number
set cindent
set hlsearch
set incsearch
set listchars=eol:$,tab:>-,trail:~,extends:>,precedes:<,space:␣
set list

filetype plugin on
set ofu=syntaxcomplete#Complete
autocmd FileType python set omnifunc=pythoncomplete#Complete
autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
autocmd FileType css set omnifunc=csscomplete#CompleteCSS

