call plug#begin('~/.vim/plugged')
" Fold for Python.
Plug 'tmhedberg/SimpylFold'
let g:SimpylFold_docstring_preview=1
" Enable folding.
set foldmethod=indent
set foldlevel=99
" Enable folding with the spacebar.
nnoremap <space> za

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
let g:airline_theme='dark'

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
hi Search ctermfg=0 " Font color for search.
hi MatchParen ctermbg=none ctermfg=4 " Parenthesis maching highlighting.
hi ExtraWhitespace ctermbg=0 " Color of trailing whitespace.
hi Folded ctermbg=none " No bg color for folded code.
hi Pmenu ctermbg=0 ctermfg=7 " No style, only font color for the popup pane.
set cursorline " Highlight the cursor line.
hi CursorLine cterm=None " No style for cursor line.
hi CursorLine ctermbg=235 " Highlight the background of cursor line.
match ExtraWhitespace /\s\+$/
set expandtab " Use spaces for tabs.
set autoindent
set fileformat=unix
set encoding=utf-8
set backspace=2
filetype on " Use syntax based on file type.
filetype plugin on " Use plugins based file type.
syntax on " Highlight
