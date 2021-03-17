" For plugins
"

" Install vim-plug if not found
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
      \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
endif

" vim-plug
call plug#begin('~/.vim/plugged')
  Plug 'junegunn/vim-plug'    " to install help for vim-plug itself
  Plug 'jeffkreeftmeijer/vim-numbertoggle'

  " Japanese help
  Plug 'vim-jp/vimdoc-ja'
  set helplang=ja,en

  "
  Plug 'tpope/vim-surround'
  Plug 'RRethy/vim-illuminate'
  let g:Illuminate_delay = 50

  " fzf
  Plug 'junegunn/fzf'
  Plug 'junegunn/fzf.vim'

  " color
  source ~/.vim/pre_plugin/color_scheme.vim

  " git
  source ~/.vim/pre_plugin/git.vim

  "Plug 'ycm-core/YouCompleteMe', { 'branch': 'legacy-py2' }
  "let g:ycm_key_list_select_completion = ['<Down>']

  source ~/.vim/pre_plugin/mucomplete.vim

  source ~/.vim/pre_plugin/gtags.vim
  source ~/.vim/pre_plugin/ultisnips.vim
  source ~/.vim/pre_plugin/lightline.vim
  source ~/.vim/pre_plugin/hilightedyank.vim
call plug#end()

" Run PlugInstall if there are missing plugins
if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

