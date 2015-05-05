
"autocmd FileType vhdl nnoremap <localleader>c :call Modelsim_compile()<qr>

command! ModSimComp : call Modelsim_compile()

let modelsim_project_dir="modelsim_project.dir"

function! Modelsim_compile()
"  set makeprg=vcom\ -work\ work\ %
"  execute "make"
"  execute "cw"
  e modelsim_project.dir 
  exe "normal! B"
  echom expand("<cWORD>")
  bd!
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