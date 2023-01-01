require('plugins')
require('neodev').setup()
-- setups lsp-zero, nvim-cmp
require('lsp')

require('appearance')
require('lualine').setup({

})

require('keys')
require('noice').setup()
require('nvim-tree').setup()
require('which-key').setup()
require('illuminate').configure({
    providers = {
        'lsp',
        'treesitter',
        'regex',
    },
    delay = 50,
    filetypes_denylist={
        'fugitive'
    },
    under_cursor = true,
})

require('nvim-treesitter.configs').setup {
    ensure_installed = { "c", "lua", "rust" },
    sync_install = false,
    auto_install = true,
    highlight = {
        enable = true,
    }
}

vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.smartindent = true

vim.opt.wrap = false

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.termguicolors = true

vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"

vim.opt.updatetime = 50

vim.opt.colorcolumn = "80"
