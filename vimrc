call plug#begin('~/.vim/plugged')

" Auto Pair the parenthesis.
Plug 'jiangmiao/auto-pairs'

" Indent for python.
Plug 'vim-scripts/indentpython.vim', { 'for' : 'python' }

" Use ctrl+p to find files.
Plug 'ctrlpvim/ctrlp.vim'

" Vim status bar.
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
let g:airline_powerline_fonts=0
" remove the filetype part
let g:airline_section_y=''
let g:airline_section_z = '%4l : %-4c'
" remove separators for empty sections
let g:airline_skip_empty_sections = 1
let g:airline_section_error = ''
let g:airline_section_warning = ''
let g:airline#extensions#branch#vcs_checks = []
" Use the same airline theme for tmux
Plug 'edkolev/tmuxline.vim'
let g:tmuxline_powerline_separators = 0

" Latex plugin.
Plug 'lervag/vimtex', { 'for' : 'tex' }

call plug#end()

" Color Scheme
set background=dark
let g:edge_disable_italic_comment = 1
" colorscheme edge

" Split the tabs below and right.
set splitbelow
set splitright

set nu rnu " Set line number.
set tabstop=4 " Tab to 4 spaces.
set softtabstop=4 " While backspacing tabs.
set shiftwidth=4 " The indent space.
set hlsearch " Highlight the search word.
"set cursorline " Highlight the cursor line.
"set cursorcolumn " Highlight the cursor line.
highlight CursorLine ctermbg=235 cterm=NONE 
highlight CursorColumn ctermbg=235
set expandtab " Use spaces for tabs.
set autoindent
set fileformat=unix
set encoding=utf-8
set backspace=2
filetype on " Use syntax based on file type.
filetype plugin on " Use plugins based file type.
syntax on " Highlight

" Let CtrlP not go all the way up to the root of the client. Instead, consider a
" METADATA file to delimit a project.
let g:ctrlp_root_markers = ['METADATA']
