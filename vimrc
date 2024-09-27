call plug#begin('~/.vim/plugged')

" Auto Pair the parenthesis.
Plug 'jiangmiao/auto-pairs'

" Indent for python.
Plug 'vim-scripts/indentpython.vim', { 'for' : 'python' }

" Use ctrl+p to find files.
Plug 'ctrlpvim/ctrlp.vim'

call plug#end()

" Split the tabs below and right.
set splitbelow
set splitright

set nu rnu " Set line number.
set tabstop=4 " Tab to 4 spaces.
set softtabstop=4 " While backspacing tabs.
set shiftwidth=4 " The indent space.
set hlsearch " Highlight the search word.
set expandtab " Use spaces for tabs.
set autoindent " Auto indent on new lines.
set fileformat=unix
set encoding=utf-8
set backspace=2
filetype on " Use syntax based on file type.
filetype plugin on " Use plugins based file type.
syntax on " Highlight

" Let CtrlP not go all the way up to the root of the client. Instead, consider a
" METADATA file to delimit a project.
let g:ctrlp_root_markers = ['METADATA']
