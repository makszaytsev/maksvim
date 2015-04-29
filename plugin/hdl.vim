
command ModSimComp : call Modelsim_compile()

function Modelsim_compile()
  set makeprg=vcom\ -work\ work\ %
  execute "make"
  execute "cw"
endfunction

"set error format 
set errorformat=\*\*\ %tRROR:\ %f(%l):\ %m,\*\*\ %tRROR:\ %m,\*\*\ %tARNING:\ %m,\*\*\ %tOTE:\ %m,%tRROR:\ %f(%l):\ %m,%tARNING\[%*[0-9]\]:\ %f(%l):\ %m,%tRROR:\ %m,%tARNING\[%*[0-9]\]:\ %m