vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2") 
vim.cmd("set shiftwidth=2")
vim.cmd("set number")
vim.opt.number = true
vim.opt.relativenumber = true
-- Make sure to setup `mapleader` and `maplocalleader` before
-- loading lazy.nvim so that mappings are correct.
-- This is also a good place to setup other settings (vim.opt)
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

-- misc options
vim.g.lazyvim_check_order = false


