Plug 'SirVer/ultisnips', { 'tag': '3.2'}
" Snippets are separated from the engine. Add this if you want them:
" Plug 'honza/vim-snippets'

" Trigger configuration. You need to change this to something else than
"  <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-j>"
let g:UltiSnipsJumpBackwardTrigger="<c-k>"

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"

let g:UltiSnipsSnippetsDir = "~/.vim/UltiSnips"
let g:UltiSnipsSnippetDirectories = ["UltiSnips"]
