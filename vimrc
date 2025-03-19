call plug#begin('~/.vim/plugged')

" Auto Pair the parenthesis.
Plug 'jiangmiao/auto-pairs'

" Indent for python.
Plug 'vim-scripts/indentpython.vim', { 'for' : 'python' }

" Use ctrl+p to find files.
Plug 'ctrlpvim/ctrlp.vim'

call plug#end()

" Allow copy to system clipboard
" when using Secure Shell Chrome Extension
source ~/.vim/osc52.vim
vmap <C-c> y:call SendViaOSC52(getreg('"'))<cr>

" Split the tabs below and right.
set splitbelow
set splitright

" Let it create swp files in a specified dir.
set directory=/tmp

set tabstop=4 " Tab to 4 spaces.
set softtabstop=4 " While backspacing tabs.
set shiftwidth=4 " The indent space.

set nu rnu " Set line number.
set hlsearch " Highlight the search word.
set expandtab " Use spaces for tabs.
set autoindent " Auto indent on new lines.
set fileformat=unix
set encoding=utf-8
set backspace=2
filetype on " Use syntax based on file type.
filetype plugin on " Use plugins based file type.
syntax on " Highlight

" Restrict CtrlP to searching only the directories from which we ran vim.
let g:ctrlp_working_path_mode = 0
