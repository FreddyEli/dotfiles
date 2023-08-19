set nu
set rnu
"set termguicolors
let mapleader =","
filetype plugin on
set fillchars=fold:\ 
set clipboard=unnamedplus
set splitbelow splitright
set undofile
set undodir=~/.cache/nvim/undo-dir
autocmd BufWinLeave * mkview
autocmd BufWinEnter * silent! loadview
autocmd BufRead,BufNewfile *.keymap set filetype=zmk
" Nav splits
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l
" Comandos que sólo existen porque soy estúpido
command WQ wq
command Wq wq
command W w
command Q q
inoremap :w <Esc>:w<CR>
" Nav gui
inoremap <leader>ñ <++>
nnoremap <leader>ñ i<++><Esc>
inoremap <leader><leader> <Esc>/<++><Enter>"_c4l
vnoremap <leader><leader> <Esc>/<++><Enter>"_c4l
map <leader><leader> <Esc>/<++><Enter>"_c4l

call plug#begin()
Plug 'dylanaraps/wal.vim'
Plug 'lervag/vimtex'
call plug#end()
colorscheme wal
