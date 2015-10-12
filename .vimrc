syntax enable
set background=dark
set backspace=indent,eol,start
let g:solarized_termcolors=16
let g:solarized_termtrans=1
set t_Co=16
set tabstop=4
set shiftwidth=4
set smarttab
set expandtab
set nowrap
set cursorline
set imdisable

set number
set ruler
set clipboard+=unnamed 
nnoremap ; :
"nnoremap <C-v> :r<space>!pbpaste

"以下を追記
set nocompatible
filetype plugin indent off

if has('vim_starting')
  set runtimepath+=~/.vim/bundle/neobundle.vim
  call neobundle#begin(expand('~/.vim/bundle'))
  NeoBundleFetch 'Shougo/neobundle.vim'
  call neobundle#end()
endif 

"タブ、空白、改行の可視化
"set list
"set listchars=tab:>.,trail:_,extends:>,precedes:<,nbsp:%

"全角スペースをハイライト表示
function! ZenkakuSpace()
    highlight ZenkakuSpace cterm=reverse ctermfg=DarkMagenta gui=reverse guifg=DarkMagenta
endfunction
       
if has('syntax') 
    augroup ZenkakuSpace
    autocmd!
    autocmd ColorScheme       * call ZenkakuSpace()
    autocmd VimEnter,WinEnter * match ZenkakuSpace /　/
    augroup END
    call ZenkakuSpace()
endif

"以下は必要に応じて追加
NeoBundle 'Shougo/unite.vim'
NeoBundle 'Shougo/neosnippet.git'
NeoBundle 'Shougo/neocomplcache.git'
NeoBundle 'altercation/vim-colors-solarized'
NeoBundle 'tpope/vim-fugitive'

filetype plugin indent on
colorscheme solarized
