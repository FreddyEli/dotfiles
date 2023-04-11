"-ms -me -mom = macro packages
"-R preprocess with refer
"-K utf8 acentos
  "map <F5> :w<CR>:!groff -ms -K utf8 -R % -Tpdf > %:t:r.pdf<CR><CR>
   "map <F5> :w<CR>:!groff -mom -K utf8 -R % -Tpdf > %:t:r.pdf<CR><CR>
   map <F5> :w<CR>:!groff -ms -pdfmark -t -K utf8 -R % -Tpdf > %:t:r.pdf<CR><CR>
   imap <F5> :w<CR>:!groff -ms -pdfmark -t -K utf8 -R % -Tpdf > %:t:r.pdf<CR><CR>
   "imap <F5> :w<CR>:!groff -ms -K utf8 -R % -Tpdf > %:t:r.pdf<CR><CR>
   map <F6> :w!<CR>:!setsid -f zathura %:t:r.pdf<CR><CR>
   map <F11> :vsp /home/estatuadetamal/.config/nvim/ftplugin/groff.vim<CR>

