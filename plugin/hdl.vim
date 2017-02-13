
"autocmd FileType vhdl nnoremap <localleader>c :call Modelsim_compile()<qr>

command! ModSimComp : call Modelsim_compile()

function! Modelsim_compile()
  set makeprg=vcom\ -work\ work\ $*
  exe "w"
  exe "make " . fnameescape(system("cygpath -w ". expand("%")))
  "exe "cw"
endfunction
-
setlocal errorformat=\*\*\ %tRROR:\ %f(%l):\ %m,\*\*\ %tRROR:\ %m,\*\*\ %tARNING:\ %m,\*\*\ %tOTE:\ %m,%tRROR:\ %f(%l):\ %m,%tARNING\[%*[0-9]\]:\ %f(%l):\ %m,%tRROR:\ %m,%tARNING\[%*[0-9]\]:\ %m
"setlocal errorformat=**\ Error:\ %f(%l):\ %m 

"abbreviations
autocmd FileType vhdl iabbrev dow downto
autocmd FileType vhdl iabbrev oth others
" vhdl mapping
autocmd FileType vhdl nnoremap <buffer> <localleader>c I--<esc>
autocmd FileType vhdl onoremap <buffer> p i(
autocmd FileType vhdl nnoremap <buffer> <F9> :ModSimComp<cr>
autocmd FileType vhdl vnoremap <buffer> <C-r> :s/\%V:.*$/=> ,/g<CR>