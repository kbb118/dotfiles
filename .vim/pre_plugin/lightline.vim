Plug 'itchyny/lightline.vim'

" Recommended setting for lightline.vim
"
"   This file must be sources between plug#begin and plug#end
"
set noshowmode    " showmode is unneccessary 'cuz lightline.vim shows current mode
set laststatus=2  " the last window will always have a status line

" If the statusline is not colored, export this in your shell.
" export TERM=xterm-256color

" lightline setting
let g:lightline = {
         \ 'active': {
         \   'left': [ [ 'mode', 'paste' ],
         \             [ 'gitbranch', 'readonly', 'filename', 'modified']]
         \ },
         \ 'component_function': {
         \   'gitbranch': 'FugitiveHead',
         \ },
         \ }
