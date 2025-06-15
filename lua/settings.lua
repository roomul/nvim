-- Globals
vim.g.mapleader = " "
vim.g.localmapleader = "//"

local opt = vim.opt
local keymap = vim.keymap.set

-- Optional
opt.number = true
opt.showmode = false
opt.cursorline = true

opt.backup = false
opt.swapfile = false
opt.undofile = false

opt.backspace = '2'
opt.tabstop = 2
opt.shiftwidth = 2
opt.shiftround = true
opt.expandtab = true
opt.ignorecase = true
opt.smartcase = true

opt.autowrite = true
opt.autoread = true

-- Keymaps
keymap('n', 'ss', ':split<cr><C-w>w', {})
keymap('n', 'sv', ':vsplit<cr><C-w>w', {})

