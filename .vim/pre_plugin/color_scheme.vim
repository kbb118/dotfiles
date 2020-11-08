" Install and deploy the color scheme
Plug 'altercation/vim-colors-solarized'
let s:dir = expand('~/.vim/colors')
let s:src = expand('~/.vim/plugged/vim-colors-solarized/colors/solarized.vim')
let s:dst = expand('~/.vim/colors/solarized.vim')
if !isdirectory(s:dir)
  call mkdir(s:dir)
endif
if !filereadable(s:dst)
  call system('ln -s ' . s:src . ' ' . s:dst)
endif

" I prefer light for my personal use and dark for working
set background=light
colorscheme solarized

" For gitgutter signs, but recently I don't show them.
highlight! link SignColumn LineNr
autocmd Colorscheme * highlight! link SignColumn LineNr

" Make special characters visible
set list
set listchars=tab:»-,nbsp:%      " tab と nbsp だけ可視化しとく。

" tab は背景に対し目立たない色に。
function! ModestTabChar()
  if &background == "light"
    highlight TabChar ctermfg=254
  elseif &background == "dark"
    highlight TabChar ctermfg=240
  endif
endfunction
autocmd OptionSet background call ModestTabChar()
call ModestTabChar()
autocmd VimEnter,WinEnter * match TabChar /\t/

" Make trailing space red (行末をタイピングしてるときは出ないように)
" https://vim.fandom.com/wiki/Highlight_unwanted_spaces
highlight ExtraWhitespace ctermbg=red
autocmd VimEnter,WinEnter * 2match ExtraWhitespace /[ \t]\+\%#\@<!$/

