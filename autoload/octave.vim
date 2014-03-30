" Octave syntax 
augroup filetypedetect 
  au! BufRead,BufNewFile *.m,*.oct,*.oc set filetype=octave 
augroup END 
" Use keywords from Octave syntax language file for autocomplete 
if has("autocmd") && exists("+omnifunc") 
   autocmd Filetype octave 
   \    if &omnifunc == "" | 
   \     setlocal omnifunc=syntaxcomplete#Complete | 
   \    endif 
endif 
