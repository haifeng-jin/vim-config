function! IsInProjectFolder(folder)
  return strpart(expand('%:p:h'), 0, strlen(a:folder)) == a:folder
endfunction

if IsInProjectFolder($GOOGLE_CODE) && expand('%:e') == 'py'
  setlocal shiftwidth=2
  setlocal tabstop=2
  setlocal softtabstop=2
endif
