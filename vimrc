call plug#begin('~/.vim/plugged')
" Fold for Python.
Plug 'tmhedberg/SimpylFold'
let g:SimpylFold_docstring_preview=1
" Enable folding.
set foldmethod=indent
set foldlevel=99
" Enable folding with the spacebar.
nnoremap <space> za
"
" Nerd Commenter
" Comment and uncomment with <leader>c<space>.
Plug 'preservim/nerdcommenter'
"
" Color Scheme
Plug 'sainnhe/edge'

" Auto Pair the parenthesis.
Plug 'jiangmiao/auto-pairs'

" Indent for python.
Plug 'vim-scripts/indentpython.vim', { 'for' : 'python' }

" Tests
Plug 'janko/vim-test'
Plug 'skywind3000/asyncrun.vim'
let test#strategy = "echo"
function! EchoStrategy(cmd)
  call asyncrun#run('', {'mode': 'term', 'pos': 'right'}, a:cmd)
  wincmd p
endfunction
let g:test#custom_strategies = {'echo': function('EchoStrategy')}
autocmd TerminalOpen * setlocal nonumber norelativenumber
" these "Ctrl mappings" work well when Caps Lock is mapped to Ctrl
nmap <silent> t<C-n> :TestNearest<CR>
nmap <silent> t<C-f> :TestFile<CR>
nmap <silent> t<C-a> :TestSuite<CR>
nmap <silent> t<C-l> :TestLast<CR>
nmap <silent> t<C-g> :TestVisit<CR>

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
let g:airline_section_z = '%4l : %4c'
" remove separators for empty sections
let g:airline_skip_empty_sections = 1
let g:airline_section_error = ''
let g:airline_section_warning = ''
let g:airline#extensions#branch#vcs_checks = []

" Git integration.
Plug 'tpope/vim-fugitive'

" Autocompletion and goto definition.
Plug 'davidhalter/jedi-vim', { 'for' : 'python' }
let g:jedi#popup_on_dot = 0 " Disable pop up autocomplete.
let g:jedi#completions_enabled = 0 " Disable autocomplete.
let g:jedi#show_call_signatures = "2" " show signature on command line.

" TabNine autocomplete.
Plug 'zxqfl/tabnine-vim'

" Show git diff.
" <leader>hp to preview the hunks.
Plug 'airblade/vim-gitgutter'

" Latex plugin.
Plug 'lervag/vimtex', { 'for' : 'tex' }

call plug#end()

" Use :R to run shell commands and receive results in window, e.g., ":R ls ".
command! -nargs=* -complete=shellcmd R new | setlocal buftype=nofile bufhidden=hide noswapfile | r !<args>

" Color Scheme
set termguicolors
set background=dark
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
"
" Map leader key to ","
let mapleader = ","

set nu rnu " Set line number.
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
