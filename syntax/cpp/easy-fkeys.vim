:map <F2> :w!<CR>
:map <F8> :split input<CR>
:map <F9> :w!<CR>:make<CR><Esc>:cw<CR>
se makeprg=g++\ -Wall\ -std=c++14\ -D_DEBUG_\ -o\ %<\ %
:map <F10> :w!<CR>:make<CR><Esc>:cw<CR>:!./%< < input<CR>
inoremap <F2> <Esc><F2>
inoremap <F8> <Esc><F8>
inoremap <F9> <Esc><F9>
inoremap <F10> <Esc><F10>
