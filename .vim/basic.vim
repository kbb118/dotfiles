" Basic settings I prefer
"

set encoding=utf8

" https://vim.fandom.com/wiki/Automatically_open_the_quickfix_window_on_:make
autocmd QuickFixCmdPost [^l]* nested cwindow
autocmd QuickFixCmdPost    l* nested lwindow

" https://github.com/koalaman/shellcheck
call system("shellcheck -V >/dev/null 2>&1")
if v:shell_error == 0
 autocmd Filetype sh set makeprg=shellcheck\ -f\ gcc\ %
 autocmd BufWritePost * if &ft=="sh" | :make
endif

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
autocmd Filetype vim setlocal ts=2 sw=2 sts=2

" search
"   小文字のみで検索したときは ignorecase
set ignorecase
set smartcase
set incsearch
set hlsearch
set nowrapscan

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

" completion
set completeopt=menu,preview,noselect

" :<c-f> があるから q: はいらない。typo するし
nnoremap q: :q
