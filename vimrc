call plug#begin('~/.vim/plugged')
" Fold for Python.
Plug 'tmhedberg/SimpylFold'
let g:SimpylFold_docstring_preview=1
" Enable folding.
set foldmethod=indent
set foldlevel=99
" Enable folding with the spacebar.
nnoremap <space> za

" Color Scheme
Plug 'sainnhe/edge'

" Auto Pair the parenthesis.
Plug 'jiangmiao/auto-pairs'

" Indent for python.
Plug 'vim-scripts/indentpython.vim'

" The flake8 plugin for python.
" Use <F7> to run flake8 on the current python file.
Plug 'nvie/vim-flake8'

" File tree.
Plug 'scrooloose/nerdtree'
let NERDTreeIgnore=['\.pyc$', '\~$'] "ignore files in NERDTree.
" Use <c-n> to show and hide the tree.
map <C-n> :NERDTreeToggle<CR> 
" Use ctrl+p to find files.
Plug 'ctrlpvim/ctrlp.vim'

" Vim status bar.
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
let g:airline_powerline_fonts=1
" remove the filetype part
let g:airline_section_y=''
" remove separators for empty sections
let g:airline_skip_empty_sections = 1
let g:airline_section_error = ''
let g:airline_section_warning = ''
let g:airline#extensions#branch#vcs_checks = []

" Git integration.
Plug 'tpope/vim-fugitive'

" Autocompletion and goto definition.
Plug 'davidhalter/jedi-vim'
let g:jedi#popup_on_dot = 0 " Disable pop up autocomplete.
let g:jedi#completions_enabled = 0 " Disable autocomplete.
let g:jedi#show_call_signatures = "2" " show signature on command line.

" TabNine autocomplete.
Plug 'zxqfl/tabnine-vim'

" Show git diff.
" <leader>hp to preview the hunks.
Plug 'airblade/vim-gitgutter'

call plug#end()

" Color Scheme
set termguicolors
set background=dark
let g:edge_style = 'neon'
let g:edge_disable_italic_comment = 1
colorscheme edge

" Split the tabs below and right.
set splitbelow
set splitright

" Split navigations.
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

set nu " Set line number.
set tabstop=4 " Tab to 4 spaces.
set softtabstop=4 " While backspacing tabs.
set shiftwidth=4 " The indent space.
set hlsearch " Highlight the search word.
set cursorline " Highlight the cursor line.
set expandtab " Use spaces for tabs.
set autoindent
set fileformat=unix
set encoding=utf-8
set backspace=2
filetype on " Use syntax based on file type.
filetype plugin on " Use plugins based file type.
syntax on " Highlight
