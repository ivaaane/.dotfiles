local vim = vim
local Plug = vim.fn['plug#']

-- plugins
vim.call('plug#begin')
Plug('nvim-lualine/lualine.nvim')
Plug('nvim-tree/nvim-web-devicons')
Plug('nvim-treesitter/nvim-treesitter')
Plug('windwp/nvim-autopairs')
Plug('ellisonleao/gruvbox.nvim')
Plug('folke/zen-mode.nvim')
Plug('christoomey/vim-tmux-navigator')
Plug('andweeb/presence.nvim')
vim.call('plug#end')

-- options
vim.opt.number = true
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.pumheight = 10
vim.opt.linebreak = true
vim.opt.spelllang = "es"

-- require
require('nvim-autopairs').setup({})
require('gruvbox').setup({ contrast = 'hard', })
require('lualine').setup({})
require("zen-mode").setup({
    window = {
        height = function()
            return vim.api.nvim_win_get_height(0) - 1
        end,
        width = 0.6,
        options = {
            number = false,
        },
    },
    plugins = {
        kitty = {
            enabled = true,
            font = "+3",
        }
    },
})

-- colors
vim.cmd('colorscheme gruvbox')
vim.api.nvim_set_hl(0, 'Normal', { bg = 'NONE' })
vim.api.nvim_set_hl(0, 'LineNr', { bg = 'NONE', fg = 'gray' })
vim.api.nvim_set_hl(0, 'CursorLineNr', { bg = 'NONE' })
vim.api.nvim_set_hl(0, "ZenBg", { ctermbg = 0 })

-- keymappin'
vim.api.nvim_set_keymap('i', '<Tab>', '<Esc>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<Tab>', '<Esc>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('i', '<C-i>', '<Tab>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-h>', 'b', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-l>', 'w', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', 'j', 'gj', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', 'k', 'gk', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', 'z', 'z=', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-p>', ':w<CR>:!love .<CR>', { noremap = true, silent = true })
