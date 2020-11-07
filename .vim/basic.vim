" Basic settings I prefer
"

set encoding=utf8

" LineNumber
set number
set relativenumber
command! Lon  set nu   | set rnu
command! Loff set nonu | set nornu

set shortmess-=S    " show search count
set showcmd
set wildmenu

" buffer and window
set hidden
set splitbelow
set splitright

" Tab char settings
"   This option may overwrite by filetype settings.
set expandtab       "タブ入力を複数の空白入力に置き換える
set tabstop=8       "画面上でタブ文字が占める幅
set shiftwidth=4    "自動インデントでずれる幅
set softtabstop=4   "連続した空白に対してタブキーやバックスペースキーでカーソルが動く幅
set autoindent      "改行時に前の行のインデントを継続する
set smartindent     "改行時に入力された行の末尾に合わせて次の行のインデントを増減する
set scrolloff=4
set backspace=indent,eol,start

" search
"   小文字のみで検索したときは ignorecase
set ignorecase
set smartcase
set incsearch
set hlsearch
set nowrapscan

" 不可視文字に対する設定
" https://vim.fandom.com/wiki/Highlight_unwanted_spaces
" tab と nbsp だけ可視化しとく。
set list
set listchars=tab:»-,nbsp:%
" tab は黒背景に対し目立たない色に。
highlight TabChar ctermfg=234
autocmd VimEnter,WinEnter * match TabChar /\t/
" 行末をタイピングしてるときは出ないようになってる
highlight ExtraWhitespace ctermbg=red
autocmd VimEnter,WinEnter * 2match ExtraWhitespace /[ \t]\+\%#\@<!$/

inoremap jj <Esc>
nnoremap  <C-s> :w<CR>
inoremap  <C-s> <C-o>:w<CR>
nnoremap  * *N
" 行末から次の行へ行ける
set whichwrap=h,l,b,s,<,>,[,]

" vimdiffの色設定
highlight DiffAdd    cterm=bold ctermfg=black ctermbg=green
highlight DiffDelete cterm=bold ctermfg=black ctermbg=red
highlight DiffChange cterm=bold ctermfg=black ctermbg=yellow
highlight DiffText   cterm=bold ctermfg=black ctermbg=white

" show full path of current buffer.
command! F echo expand('%:p')

set grepprg=git\ grep\ -I\ --line-number
