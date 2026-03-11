call plug#begin('~/.vim/plugged')

" Auto Pair the parenthesis.
Plug 'jiangmiao/auto-pairs'

" Indent for python.
Plug 'vim-scripts/indentpython.vim', { 'for' : 'python' }

" Use ctrl+p to find files.
Plug 'ctrlpvim/ctrlp.vim'

" Show the leader key menu.
Plug 'liuchengxu/vim-which-key'

" Comment out lines.
Plug 'tpope/vim-commentary'

call plug#end()

" === General Settings ===
set splitbelow
set splitright
set directory=/tmp
set tabstop=4
set softtabstop=4
set shiftwidth=4
set nu rnu
set hlsearch
set showcmd
set expandtab
set autoindent
set fileformat=unix
set encoding=utf-8
set backspace=2
filetype on
filetype plugin on
syntax on

" === Plugin Configurations ===
" osc52: Allow copy to system clipboard
source ~/.vim/osc52.vim
vmap <C-c> y:call SendViaOSC52(getreg('"'))<cr>

" CtrlP: Project delimiting
let g:ctrlp_root_markers = ['METADATA']

" === Space Leader & Shortcuts (SpaceVim-like) ===
let mapleader = "\<Space>"
set timeoutlen=500

" Trigger which-key menu
nnoremap <silent> <leader> :<c-u>WhichKey '<Space>'<CR>
vnoremap <silent> <leader> :<c-u>WhichKeyVisual '<Space>'<CR>

" Define mappings
nnoremap <leader>cf :call SendViaOSC52(expand('%'))<cr>:echo "Copied: " . expand('%')<cr>
nnoremap <leader>ec :Commentary<cr>
vnoremap <leader>ec :Commentary<cr>

" Search for selected text.
vnoremap <leader>ss y/\V<C-R>=escape(@",'/\')<CR><CR>
nnoremap <leader>ss *

" Menu labels
let g:which_key_map = {}
let g:which_key_map.c = { 'name': '+copy' }
let g:which_key_map.c.f = 'copy-file-path'
let g:which_key_map.e = { 'name': '+edit' }
let g:which_key_map.e.c = 'comment'
let g:which_key_map.s = { 'name': '+search' }
let g:which_key_map.s.s = 'search-selection'

call which_key#register('<Space>', "g:which_key_map")
