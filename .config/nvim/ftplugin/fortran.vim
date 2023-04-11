set number
"let fortran_fold=1
"let fortran_fold_conditionals=1
"set foldmethod=syntax
"   map <F5> :!clear<CR>:w<CR>:!gfortran -o %:t:r % <CR>
   "map <F5> :w<CR>:!gfortran -o %:t:r % <CR>
   map <F5> :w<CR>:!gfortran -o %:t:r % -llapack<CR>
"   map <F6> :!clear<CR>:!./%:t:r<CR><CR>
   "map <F6> :!./%:t:r<CR>
   "map <F6> :sp<CR>:te ./%:t:r<CR> :startinsert<CR>
   map <F6> :te ./%:t:r<CR>
   map <F7> :vsplit %:t:r.dat<CR>
   map <F8> :vsplit %:t:r.gpi<CR>
   "map <F9> :!gnuplot -p %:t:r.gpi &<CR><CR>
   map <F9> :!gnuplot  %:t:r.gpi &<CR><CR>
   map <F11> :vsp /home/estatuadetamal/.config/nvim/ftplugin/fortran.vim<CR><CR>
   map <F12> :vsp /home/estatuadetamal/.config/nvim/init.vim<CR><CR>
   inoremap ,func real(8) function .(<++>)<Enter>implicit none<Enter><++><Enter>endfunction<Esc>3k0f.vc
