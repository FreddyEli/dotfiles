   map <F6> :! zathura %:t:r.pdf &<cr> <cr>
   "Normal files
   "map <F5> :w!<CR>:!pandoc % -o %:t:r.pdf --citeproc &<cr><cr>
   "Presentations
   map <F5> :w!<CR>:!pandoc % -t beamer -o %:t:r.pdf &<cr><cr>
   map <F11> :vsp /home/estatuadetamal/.vim/ftplugin/markdown.vim<CR>
