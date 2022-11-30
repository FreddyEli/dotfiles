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

call plug#begin()
Plug 'dylanaraps/wal.vim'
Plug 'lervag/vimtex'
call plug#end()
colorscheme wal
