local vim = vim
local Plug = vim.fn['plug#']

-- plugins
vim.call('plug#begin')
Plug('nvim-lualine/lualine.nvim') -- status line
Plug('ellisonleao/gruvbox.nvim') -- theme
Plug('nvim-treesitter/nvim-treesitter') -- syntax highlight
Plug('windwp/nvim-autopairs') -- autopair ""{}()[]
Plug('folke/zen-mode.nvim') -- focus mode for writing
Plug('nvim-telescope/telescope.nvim') -- file navigation
Plug('habamax/vim-godot') -- godot integration
Plug('christoomey/vim-tmux-navigator') -- tmux integration
Plug('andweeb/presence.nvim') -- discord rich presence

-- dependencies
Plug('nvim-tree/nvim-web-devicons')
Plug('nvim-lua/plenary.nvim')
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
        tmux = { enabled = false },
        kitty = {
            enabled = true,
            font = "+5",
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
vim.api.nvim_set_keymap('n', 'ff', ':Telescope find_files<CR>', { noremap = true, silent = true})

-- godot integration
vim.g.godot_executable = '/bin/godot'
