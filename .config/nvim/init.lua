local vim = vim
local Plug = vim.fn['plug#']

-- plugins
vim.call('plug#begin')
Plug('nvim-treesitter/nvim-treesitter') -- syntax highlight
Plug('windwp/nvim-autopairs')           -- autopair ""{}()[]
Plug('folke/zen-mode.nvim')             -- focus mode for writing
Plug('nvim-telescope/telescope.nvim')   -- file navigation
Plug('christoomey/vim-tmux-navigator')  -- tmux integration
Plug('ya2s/nvim-cursorline')            -- Cursor niceties
Plug('nvim-lua/plenary.nvim')           -- dependency
vim.call('plug#end')

-- options
vim.opt.number = true
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.pumheight = 10
vim.opt.linebreak = true
vim.opt.list = false
vim.opt.spelllang = "es"

-- require
require('nvim-autopairs').setup({})

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
            font = "+3",
        }
    },
})

require('nvim-cursorline').setup {
  cursorline = {
    enable = true,
    timeout = 100,
    number = false,
  },
  cursorword = {
    enable = true,
    min_length = 3,
    hl = { underline = true },
  }
}

-- colors
vim.cmd('colorscheme retrobox')
vim.api.nvim_set_hl(0, 'Normal', { bg = 'NONE' })
vim.api.nvim_set_hl(0, 'LineNr', { bg = 'NONE', fg = 'gray' })
vim.api.nvim_set_hl(0, 'CursorLineNr', { bg = 'NONE' })
vim.api.nvim_set_hl(0, "ZenBg", { ctermbg = 0 })

-- keymappin'
vim.api.nvim_set_keymap('n', 'j', 'gj', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', 'k', 'gk', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', 'ff', ':Telescope find_files<CR>', { noremap = true, silent = true})
