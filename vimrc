call plug#begin('~/.vim/plugged')
" Use which key hint.
Plug 'liuchengxu/vim-which-key'
set timeoutlen=500
" Fold for Python.
Plug 'tmhedberg/SimpylFold'
let g:SimpylFold_docstring_preview=1
" Enable folding.
set foldmethod=indent
set foldlevel=99
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

" File tree.
Plug 'scrooloose/nerdtree'
let NERDTreeIgnore=['\.pyc$', '\~$'] "ignore files in NERDTree.
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

" Git integration.
Plug 'tpope/vim-fugitive'

" Autocompletion and goto definition.
" <leader>d go to definition
" <leader>n find 
" <leader>r rename 
" K show documentation
Plug 'davidhalter/jedi-vim', { 'for' : 'python' }
let g:jedi#popup_on_dot = 0 " Disable pop up autocomplete.
let g:jedi#completions_enabled = 0 " Disable autocomplete.
let g:jedi#show_call_signatures = "2" " show signature on command line.
let g:jedi#goto_command = "<leader>jd"
let g:jedi#goto_assignments_command = "<leader>jg"
let g:jedi#goto_stubs_command = "<leader>js"
let g:jedi#usages_command = "<leader>fu"
let g:jedi#rename_command = "<leader>r"

" TabNine autocomplete.
Plug 'codota/tabnine-vim', { 'for' : 'python' }

" Show git diff.
" <leader>hp to preview the hunks.
Plug 'airblade/vim-gitgutter'

" Latex plugin.
Plug 'lervag/vimtex', { 'for' : 'tex' }

" Showing code test coverage
" :CoverageToggle
Plug 'google/vim-maktaba', { 'for' : 'python' }
Plug 'google/vim-coverage', { 'for' : 'python' }
Plug 'google/vim-glaive', { 'for' : 'python' }

call plug#end()
"
" Use :R to run shell commands and receive results in window, e.g., ":R ls ".
command! -nargs=* -complete=shellcmd R new | setlocal buftype=nofile bufhidden=hide noswapfile | r !<args>

" Color Scheme
set background=dark
let g:edge_disable_italic_comment = 1
" colorscheme edge

" Split the tabs below and right.
set splitbelow
set splitright

" Map leader key to space
let g:mapleader = "\<Space>"
let g:maplocalleader = ','
nnoremap <silent> <leader>      :<c-u>WhichKey '<Space>'<CR>
nnoremap <silent> <localleader> :<c-u>WhichKey  ','<CR>

let g:which_key_map =  {}
let g:which_key_map.r = 'rename'

" Use leader b to go scroll up.
nmap <leader>b <C-b>
let g:which_key_map.b = 'scroll up'
" Fold code
nmap <leader><Space> za
" Search selected text. Select the text and type <leader>s
vnoremap <leader>fs y/\V<C-R>=escape(@",'/\')<CR><CR>
let g:which_key_map['t'] = {
            \ 'name': '+test',
            \ 'n': [':TestNearest', 'test nearest'],
            \ 'f': [':TestFile', 'test file'],
            \ 's': [':TestSuite', 'test suite'],
            \ 'l': [':TestLast', 'test last'],
            \ 'c': [':CoverageToggle', 'toggle coverage'],
            \ }
let g:which_key_map['w'] = {
            \ 'name' : '+windows' ,
            \ 'w' : ['<C-W>w'     , 'other-window']          ,
            \ 'd' : ['<C-W>c'     , 'delete-window']         ,
            \ '-' : ['<C-W>s'     , 'split-window-below']    ,
            \ '|' : ['<C-W>v'     , 'split-window-right']    ,
            \ '2' : ['<C-W>v'     , 'layout-double-columns'] ,
            \ 'h' : ['<C-W>h'     , 'window-left']           ,
            \ 'j' : ['<C-W>j'     , 'window-below']          ,
            \ 'l' : ['<C-W>l'     , 'window-right']          ,
            \ 'k' : ['<C-W>k'     , 'window-up']             ,
            \ 'H' : ['<C-W>5<'    , 'expand-window-left']    ,
            \ 'J' : [':resize +5'  , 'expand-window-below']   ,
            \ 'L' : ['<C-W>5>'    , 'expand-window-right']   ,
            \ 'K' : [':resize -5'  , 'expand-window-up']      ,
            \ '=' : ['<C-W>='     , 'balance-window']        ,
            \ 's' : ['<C-W>s'     , 'split-window-below']    ,
            \ 'v' : ['<C-W>v'     , 'split-window-below']    ,
            \ '?' : ['Windows'    , 'fzf-window']            ,
            \ 'n' : [':NERDTreeToggle'    , 'toggle-nerd-tree']            ,
            \ }
let g:which_key_map['j'] = {
            \ 'name': '+jump',
            \ 't': [':TestVisit', 'last test'],
            \ }
let g:which_key_map['f'] = {'name': '+find'}
let g:which_key_map['SPC'] = {'name': 'fold'}
let g:which_key_map['f'].s = 'search selected'

silent! call which_key#register('<Space>', "g:which_key_map")

set nu rnu " Set line number.
set tabstop=4 " Tab to 4 spaces.
set softtabstop=4 " While backspacing tabs.
set shiftwidth=4 " The indent space.
set hlsearch " Highlight the search word.
set cursorline " Highlight the cursor line.
set cursorcolumn " Highlight the cursor line.
highlight CursorLine ctermbg=235
highlight CursorColumn ctermbg=235
set expandtab " Use spaces for tabs.
set autoindent
set fileformat=unix
set encoding=utf-8
set backspace=2
filetype on " Use syntax based on file type.
filetype plugin on " Use plugins based file type.
syntax on " Highlight
