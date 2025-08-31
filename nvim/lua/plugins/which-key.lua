return {
	"folke/which-key.nvim",
	event = "VeryLazy",
	opts = {
		mode = "n",
		prefix = "<leader>",
	},
	keys = {
		{ "<leader>a", "<CMD>Alpha<CR>", desc = "alpha" },
		{ "<leader>g", "<CMD>LazyGit<CR>", desc = "git" },
		{ "<leader>q", "<CMD>q!<CR>", desc = "quit" },
		{ "<leader>s", "<CMD>w!<CR>", desc = "save" },
        -- buffer
		{ "<leader>b", group = "Buffer Mgmt" },
		{ "<leader>bc", "<cmd>bdelete!<CR>", desc = "Close buffer" },
		{ "<leader>bn", "<CMD>bnext<CR>", desc = "Next buffer" },
		{ "<leader>bp", "<CMD>bprevious<CR>", desc = "Previous buffer" },
        -- find & search
		{ "<leader>f", desc = "Find & Search" },
		{ "<leader>fb", "<CMD>lua require('telescope.builtin').buffers(require('telescope.themes').get_dropdown{previewer = true})<cr>", desc = "Buffer" },
		{ "<leader>ff", "<CMD>Telescope find_files<CR>", desc = "Files" },
		{ "<leader>fh", function() require("flash").treesitter_search() end, desc = "Flash treesitter" },
		{ "<leader>fj", function() require("flash").jump() end, desc = "Jump" },
		{ "<leader>fp", "<CMD>Telescope conduct projects<CR>", desc = "Projects" },
		{ "<leader>fS", "<CMD>Telescope conduct sessions<CR>", desc = "Sessions" },
        -- language server
		{ "<leader>l", desc = "Language Server" },
		{ "<leader>la", vim.lsp.buf.code_action, desc = "Code actions" },
		{ "<leader>ld", vim.lsp.buf.declaration, desc = "Defs" },
		{ "<leader>lD", "<CMD>Telescope lsp_references<CR>", desc = "Def references" },
		{ "<leader>li", "<CMD>Telescope lsp_implementations<CR>", desc = "Type implementations" },
		{ "<leader>lk", vim.lsp.buf.hover, desc = "Documentation" },
		{ "<leader>lr", vim.lsp.buf.rename, desc = "Rename" },
		{ "<leader>lt", "<CMD>Telescope lsp_type_definitions<CR>", desc = "Type defs" },
        -- terminal
		{ "<leader>t", desc = "Terminal Operations" },
		{ "<leader>tf", "<CMD>ToggleTerm direction=float<CR>", desc = "Float" },
		{ "<leader>tt", "<CMD>ToggleTerm<CR>", desc = "Toggle" },
        -- tab
		{ "<leader>T", desc = "Tab Management" },
		{ "<leader>Tc", "<CMD>tabclose<cr>", desc = "Close Tab" },
		{ "<leader>Tn", "<CMD>tabnext<cr>", desc = "Next Tab" },
		{ "<leader>Tp", "<CMD>tabprevious<cr>", desc = "Previous Tab" },
        -- windows
		{ "<leader>w", desc = "Window Operations" },
		{ "<leader>ws", "<CMD>vs<CR>", desc = "Vertical" },
		{ "<leader>wv", "<CMD>sp<CR>", desc = "Horizontal" },
	},
}
