local opts = { noremap = true, silent = true }
local keymap = vim.api.nvim_set_keymap


keymap("v", "J", ":m '>+1<CR>gv=gv", opts)
keymap("v", "K", ":m '<-2<CR>gv=gv", opts)

-- keep cursor steady when...
-- combining lines
keymap("n", "J", "mzJ`z", opts)

-- Better indenting
      -- keymap("v", "<tab>", ">gv", opts)

-- when half page jumping
keymap("n", "<C-d>", "<C-d>zz", opts)
keymap("n", "<C-u>", "<C-u>zz", opts)
keymap("n", "n", "nzzzv", opts)
keymap("n", "N", "Nzzzv", opts)

-- (delete to void)
-- vim.keymap.("x", "<leader>p", [["_dP]])
keymap("n", "<leader>d", "\"-d", opts)
keymap("v", "<leader>d", "\"-d", opts)

-- yank to system clipboard
vim.keymap.set({"n", "v"}, "<leader>y", [["+y]])
keymap("n", "<leader>Y", [["+Y]], opts)

-- replace
keymap("n", "<leader><leader>r", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]], opts)


vim.keymap.set("n", "<leader><leader>", function()
    vim.cmd("so")
end)

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
