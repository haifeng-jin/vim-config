setlocal textwidth=85 " For formatting a paragraph.
" setlocal colorcolumn=+1 " Set a ruler relative to textwidth.
" hi ColorColumn ctermbg=0 " Color of color column.

" Sort the imports with Isort on save.
au BufWritePost *.py call Format()
function Format()
    let l:winview = winsaveview()
    normal gg"_dG
    r !isort -sl -d %
    normal gg"_dd
    w
    normal gg"_dG
    r !autopep8 --aggressive --aggressive %
    normal gg"_dd
    w
    call winrestview(l:winview)
endfunction
