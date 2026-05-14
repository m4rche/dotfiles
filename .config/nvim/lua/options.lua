-- Use `:h <option>` for help

vim.opt.completeopt = {'menu', 'menuone', 'noselect'}

-- Leader
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Clipboard
vim.opt.clipboard = 'unnamedplus'

-- Tab
vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true

-- UI
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.cursorline = true
vim.opt.splitbelow = true
vim.opt.splitright = true
vim.opt.listchars = { tab = '» ', trail = '·', nbsp = '␣'}

-- Search
vim.opt.incsearch = true
vim.opt.hlsearch = true
vim.opt.ignorecase = true
vim.opt.smartcase = true
