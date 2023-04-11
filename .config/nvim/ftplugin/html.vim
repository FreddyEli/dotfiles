if &ft=="markdown"
  finish
endif
set relativenumber
   map <silent> <F5> :w<CR>:!qutebrowser --target window % &<CR><CR>
   map <F11> :vsp /home/estatuadetamal/.vim/ftplugin/html.vim<CR>
   inoremap <leader>p <Esc>O<p><CR><CR></p><Esc>ki
   nnoremap <leader>p O<p><CR><CR></p><Esc>ki
   nnoremap <leader>sec O<section><CR><CR></section><Esc>ki
   inoremap <leader>sec <section><CR><CR></section><Esc>ki
   inoremap <leader>ul <ul><li></li></ul><Esc>9hi
   inoremap <leader>li <li></li><Esc>4hi
   inoremap <leader>h1 <h1></h1><Esc>4hi
   inoremap <leader>h2 <h2></h2><Esc>4hi
   inoremap <leader>h3 <h3></h3><Esc>4hi
   inoremap <leader>div <div></div><Esc>5hi
   inoremap <leader>st style=""<esc>i
   inoremap <leader>cl class=""<esc>i
   nnoremap dim  F$hv2f$ld
