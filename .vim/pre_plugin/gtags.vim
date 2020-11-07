Plug 'vim-scripts/gtags.vim'

map <C-g> :Gtags 
map <C-k> :Gtags -f %<CR>
map <C-j> :GtagsCursor<CR>
map <C-n> :cn<CR>
map <C-p> :cp<CR>
let Gtags_Auto_Update=1  "    keep tag files up-to-date automatically

function! GlobalComplete(findstart, base)
  if a:findstart == 1
    return s:LocateCurrentWordStart()
  else
    return split(system('global -c ' . a:base), '\n')
  endif
endfunction

function! s:LocateCurrentWordStart()
  let l:line = getline('.')
  let l:start = col('.') - 1
  while l:start > 0 && l:line[l:start - 1] =~# '\a'
    let l:start -= 1
  endwhile
  return l:start
endfunction

augroup GlobalComplete
  autocmd!
  autocmd FileType c setlocal omnifunc=GlobalComplete
augroup END
