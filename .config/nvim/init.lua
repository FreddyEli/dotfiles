vim.o.nu = true
vim.o.rnu = true
vim.o.mouse = 'a'
vim.o.scrolloff = 8
vim.g.mapleader = ","
vim.o.undofile = true
vim.o.expandtab = true
vim.o.smartcase = true
vim.o.ignorecase = true
vim.o.splitright = true
vim.o.splitbelow = true
vim.o.fillchars = 'fold: '
vim.o.clipboard = 'unnamedplus'
vim.o.undodir = '$HOME/.cache/nvim/undo-dir/'

vim.api.nvim_create_user_command('WQ', 'wq', {})
vim.api.nvim_create_user_command('Wq', 'wq', {})
vim.api.nvim_create_user_command('W', 'w', {})
vim.api.nvim_create_user_command('Q', 'q', {})

local function map(m, k, v)
    vim.keymap.set(m, k, v, { silent = true })
end
map('n', '<leader>o', 'o<ESC>')
map('n', '<leader>O', 'O<ESC>')
map('', '<leader>h', '<C-w>h')
map('', '<leader>j', '<C-w>j')
map('', '<leader>k', '<C-w>k')
map('', '<leader>l', '<C-w>l')
map('n', '<C-j>', '<CMD>move .+1<CR>')
map('n', '<C-k>', '<CMD>move .-2<CR>')
map('x', '<C-j>', ":move '>+1<CR>gv=gv")
map('x', '<C-k>', ":move '<-2<CR>gv=gv")
map( 'i',':w', '<Esc>:w<CR>')
map( 't','<Esc>', '<C-\\><C-n>')

map( 'i','<leader>ñ', '<++>')
map( 'n','<leader>ñ', 'i<++><Esc>')
map( '','<leader><leader>', '<Esc>/<++><Enter>"_c4l')
map('','<F1>' , ':setlocal spell! spelllang=es_es,en_gb<CR>')
map('','<F2>' , ':setlocal spell! spelllang=es_es<CR>')
map('','<F3>' , ':setlocal spell! spelllang=en_gb<CR>')
map('','<F12>', ':vsp /home/estatuadetamal/.config/nvim/init.lua<CR><CR>')

vim.api.nvim_create_autocmd({"BufWinLeave"}, { pattern = {"*"}, command = "mkview", })
vim.api.nvim_create_autocmd({"BufWinEnter"}, { pattern = {"*"}, command = "silent! loadview", })
vim.api.nvim_create_autocmd({"BufWinEnter", "BufNewfile"}, { pattern = {"*.ms", "*.me", "*.mom"}, command = "set filetype =groff", })


local A = vim.api
local num_au = A.nvim_create_augroup('NUMTOSTR', { clear = true })
A.nvim_create_autocmd('TermOpen', {
    group = num_au,
    callback = function(data)
        if not string.find(vim.bo[data.buf].filetype, '^[fF][tT]erm') then
            A.nvim_set_option_value('number', false, { scope = 'local' })
            A.nvim_set_option_value('relativenumber', false, { scope = 'local' })
            A.nvim_set_option_value('signcolumn', 'no', { scope = 'local' })
            A.nvim_command('startinsert')
        end
    end,
})
