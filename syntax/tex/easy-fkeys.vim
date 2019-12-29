:map <F2> :w!<CR>
:map <F8> :split input<CR>
:map <F9> :w!<CR>:!pdflatex %<cr>
:map <F10> :w!<CR>:!pdflatex %<cr>:!bibtex %:r<cr>:!pdflatex %<cr>:!pdflatex %<cr>
inoremap <F2> <Esc><F2>
inoremap <F8> <Esc><F8>
inoremap <F9> <Esc><F9>
inoremap <F10> <Esc><F10>
