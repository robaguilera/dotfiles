local opt = vim.opt

opt.guicursor = ""
opt.timeoutlen = 300

-- line numbers
opt.relativenumber = true -- show relative line numbers
opt.number = true         -- shows absolute line number on cursor line (when relative number is on)

-- tabs & indentation
opt.tabstop = 4
opt.softtabstop = 4
opt.shiftwidth = 4
opt.expandtab = true  -- expand tab to spaces
opt.autoindent = true -- copy indent from current line when starting new one
opt.smartindent = true

opt.cursorline = true -- highlight the current cursor line

opt.termguicolors = true
opt.signcolumn = "yes" -- show sign column so that text doesn't shift

opt.wrap = false

opt.swapfile = false
opt.backup = false
opt.undofile = true

opt.hlsearch = false
opt.incsearch = true

opt.termguicolors = true

opt.scrolloff = 8
opt.isfname:append("@-@")

opt.updatetime = 50

vim.g.python3_host_prog = "~/.pyenv/versions/nvim/bin/python"

-- vim.notify = require("notify")
