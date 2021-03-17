Plug 'lifepillar/vim-mucomplete'
let g:mucomplete#enable_auto_at_startup = 1

set completeopt+=menuone
set shortmess+=c   " Shut off completion messages
set belloff+=ctrlg " If Vim beeps during completion

let g:mucomplete#chains = {
    \ 'c'       : ['path', 'ulti', 'incl'],
    \ 'default' : ['path', 'omni', 'keyn', 'dict', 'uspl'],
    \ 'vim'     : ['path', 'cmd', 'keyn'],
    \ }
