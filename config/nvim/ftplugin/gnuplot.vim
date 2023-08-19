 map <F6> :!./%:t:r<CR><CR>
 map <F9> :w<CR>:!gnuplot -p % &<CR><CR>
 map <F11> :vsp /home/estatuadetamal/.config/nvim/ftplugin/gnuplot.vim<CR>
 nnoremap ,stay  :-1read $HOME/.plantillasvim/gnuplot_stay.gpi<CR>
 map ,out   :-1read $HOME/.plantillasvim/gnuplot_out.gpi<CR>
 nnoremap ,hist  :-1read $HOME/.plantillasvim/histo.gpi<CR>
 map ,o ggOset term pngcairo size 1280, 960 font "Times,20"<Enter> set output '<++>.png' <Esc>

