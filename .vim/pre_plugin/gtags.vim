Plug 'vim-scripts/gtags.vim'

 map <C-g> :Gtags 
 map <C-k> :Gtags -f %<CR>
 map <C-j> :GtagsCursor<CR>
 map <C-n> :cn<CR>
 map <C-p> :cp<CR>
 let Gtags_Auto_Update=1  "    keep tag files up-to-date automatically
