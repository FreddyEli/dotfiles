vim.api.nvim_create_user_command('WQ', 'wq', {})
vim.api.nvim_create_user_command('Wq', 'wq', {})
vim.api.nvim_create_user_command('W', 'w', {})
vim.api.nvim_create_user_command('Q', 'q', {})


vim.api.nvim_create_autocmd({"BufWinLeave"}, { pattern = {"*"}, command = "mkview", })
vim.api.nvim_create_autocmd({"BufWinEnter"}, { pattern = {"*"}, command = "silent! loadview", })
vim.api.nvim_create_autocmd({"BufWinEnter", "BufNewfile"}, { pattern = {"*.ms", "*.me", "*.mom"}, command = "set filetype =groff", })
vim.api.nvim_create_autocmd({"BufWinEnter", "BufNewfile"}, { pattern = {"*.keymap"}, command = "set filetype=c", })


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
