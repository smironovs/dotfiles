-- init.lua

-- 1. Load WSL2 Clipboard Support
require('clipboard')

-- 2. Basic Settings
vim.opt.number = true          -- Show line numbers
vim.opt.relativenumber = true  -- Show relative line numbers
vim.opt.tabstop = 4            -- Number of spaces a tab counts for
vim.opt.shiftwidth = 4         -- Number of spaces for auto-indent
vim.opt.expandtab = true       -- Use spaces instead of tabs
vim.opt.smartindent = true     -- Smart auto-indenting
vim.opt.termguicolors = true   -- Enable 24-bit RGB colors (important for themes)

-- 3. Leader key (Space bar)
vim.g.mapleader = " "
vim.g.maplocalleader = " "
