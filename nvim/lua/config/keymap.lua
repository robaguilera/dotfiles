vim.g.mapleader = " "

local opts = { noremap = true, silent = true }
local keymap = vim.api.nvim_set_keymap

keymap("v", "J", ":m '>+1<CR>gv=gv", opts)
keymap("v", "K", ":m '<-2<CR>gv=gv", opts)

-- keep cursor steady when...
-- combining lines
keymap("n", "J", "mzJ`z", opts)

-- Better indenting
keymap("v", "<tab>", ">gv", opts)

-- yank to system clipboard
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])
keymap("n", "<leader>Y", [["+Y]], opts)

-- Better window navigation
keymap("n", "<C-h>", "<C-w>h", opts)
keymap("n", "<C-j>", "<C-w>j", opts)
keymap("n", "<C-k>", "<C-w>k", opts)
keymap("n", "<C-l>", "<C-w>l", opts)

-- Resize with arrows
keymap("n", "<C-S-j>", ":resize +2<CR>", opts)
keymap("n", "<C-S-k>", ":resize -2<CR>", opts)
keymap("n", "<C-S-h>", ":vertical resize -2<CR>", opts)
keymap("n", "<C-S-l>", ":vertical resize +2<CR>", opts)

-- Terminal
vim.api.nvim_set_keymap("t", "<C-t>", "<C-\\><C-n>:ToggleTerm<CR>", { noremap = true, silent = true })
keymap("t", "<C-h>", "<C-w>h", opts)
keymap("t", "<C-j>", "<C-w>j", opts)
keymap("t", "<C-k>", "<C-w>k", opts)
keymap("t", "<C-l>", "<C-w>l", opts)
