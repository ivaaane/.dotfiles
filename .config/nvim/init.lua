local vim = vim
local Plug = vim.fn['plug#']

-- plugins
vim.call('plug#begin')
Plug('rebelot/kanagawa.nvim')
Plug('nvim-lualine/lualine.nvim')
Plug('nvim-treesitter/nvim-treesitter')
Plug('windwp/nvim-autopairs')
Plug('lukas-reineke/indent-blankline.nvim')
Plug 'norcalli/nvim-colorizer.lua'
vim.call('plug#end')

-- options
vim.opt.number = true
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = false
vim.opt.pumheight = 10

-- colors
vim.cmd('colorscheme kanagawa')

-- transparent background
vim.api.nvim_set_hl(0, 'Normal', { bg = 'NONE' })
vim.api.nvim_set_hl(0, 'LineNr', { bg = 'NONE', fg = 'gray' })
vim.api.nvim_set_hl(0, 'CursorLineNr', { bg = 'NONE' })

-- require
require('lualine').setup()
require('nvim-autopairs').setup({})
require('ibl').setup()

-- disable arrow keys
vim.api.nvim_set_keymap('n', '<Up>', '<Nop>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<Down>', '<Nop>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<Left>', '<Nop>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<Right>', '<Nop>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('i', '<Up>', '<Nop>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('i', '<Down>', '<Nop>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('i', '<Left>', '<Nop>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('i', '<Right>', '<Nop>', { noremap = true, silent = true })

-- keymappin'
vim.api.nvim_set_keymap('i', '<Tab>', '<Esc>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<Tab>', '<Esc>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('i', '<C-i>', '<Tab>', { noremap = true, silent = true })
