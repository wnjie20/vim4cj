" Vim support file to detect cangjie file types

" Maintainer:	Niujie
" Last Change:	2024 Oct 23


" Listen very carefully, I will say this only once
if exists("did_load_filetypes")
  finish
endif
let did_load_filetypes = 1

" Line continuation is used here, remove 'C' from 'cpoptions'
let s:cpo_save = &cpo
set cpo&vim

augroup filetypedetect
au BufNewFile,BufRead *.cj	setf cangjie
augroup END

let &cpo = s:cpo_save
unlet s:cpo_save

" vim:set sw=2 sts=2 ts=8 noet:
