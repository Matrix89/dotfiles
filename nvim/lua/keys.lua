local telescope = require('telescope.builtin')
local cmp = require('cmp')

vim.g.mapleader = ' '

vim.keymap.set('n', '<leader><leader>', telescope.find_files, { desc = "Find files" })
vim.keymap.set('n', '<leader>s', telescope.grep_string, { desc = "Search strings" })

vim.keymap.set('n', '<leader>w', ':w<CR>', { desc = "Save" })

vim.keymap.set('n', '<leader>q', ':q<CR>', { desc = "Quit Current Buffer" })
vim.keymap.set('n', '<C-h>', '<C-w>h', {})
vim.keymap.set('n', '<C-j>', '<C-w>j', {})
vim.keymap.set('n', '<C-k>', '<C-w>k', {})
vim.keymap.set('n', '<C-l>', '<C-w>l', {})

vim.keymap.set('n', '<leader>f', vim.lsp.buf.format, { desc = "Format" })

vim.keymap.set('n', '<leader>e', ':NvimTreeToggle<CR>', { desc = "Open file explorer" })
vim.keymap.set('n', '<leader>t', ':vsp<CR><C-w><C-L>:terminal<CR>i', { desc = "Open terminal" })

vim.keymap.set('i', '<C-Space>', cmp.complete, {})
vim.keymap.set('i', '<C-n>', cmp.select_next_item, {})
vim.keymap.set('i', '<C-p>', cmp.select_prev_item, {})

vim.keymap.set('t', '<C-h>', '<C-\\><C-n><C-w>h', {})
vim.keymap.set('t', '<C-j>', '<C-\\><C-n><C-w>j', {})
vim.keymap.set('t', '<C-k>', '<C-\\><C-n><C-w>k', {})
vim.keymap.set('t', '<C-l>', '<C-\\><C-n><C-w>l', {})

vim.keymap.set('n', '<F5>', function()
    for k, v in pairs(package.loaded) do
    end
end, {})
