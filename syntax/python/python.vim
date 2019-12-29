setlocal textwidth=85 " For formatting a paragraph.
setlocal colorcolumn=+1 " Set a ruler relative to textwidth.
hi ColorColumn ctermbg=0 " Color of color column.

" Sort the imports with Isort on save.
au BufWritePost *.py call Isort()
function Isort()
    let l:winview = winsaveview()
    normal gg"_dG
    r !isort -sl -d %
    normal gg"_dd
    w
    call winrestview(l:winview)
endfunction

" Use autopep8 to format the file on save.
au BufWritePost *.py call AutoPep8()
function AutoPep8()
    let l:winview = winsaveview()
    normal gg"_dG
    r !autopep8 %
    normal gg"_dd
    w
    call winrestview(l:winview)
endfunction
