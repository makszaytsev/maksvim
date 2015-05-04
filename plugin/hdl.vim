
command ModSimComp : call Modelsim_compile()

function Modelsim_compile()
  set makeprg=vcom\ -work\ work\ %
  execute "make"
  execute "cw"
endfunction

"set error format 
set errorformat=\*\*\ %tRROR:\ %f(%l):\ %m,\*\*\ %tRROR:\ %m,\*\*\ %tARNING:\ %m,\*\*\ %tOTE:\ %m,%tRROR:\ %f(%l):\ %m,%tARNING\[%*[0-9]\]:\ %f(%l):\ %m,%tRROR:\ %m,%tARNING\[%*[0-9]\]:\ %m

"abbreviations
autocmd FileType vhdl iabbrev dow downto
autocmd FileType vhdl iabbrev oth others
" vhdl mapping
autocmd FileType vhdl nnoremap <buffer> <localleader>c I--<esc>
autocmd FileType vhdl onoremap <buffer> p i(
autocmd FileType vhdl vnoremap <buffer> <C-r> :s/\%V:.*$/=> ,/g<CR>