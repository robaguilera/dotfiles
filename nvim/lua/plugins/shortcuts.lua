return {
	"folke/which-key.nvim",
	event = "VeryLazy",
	config = function()
		local wk = require("which-key")
		wk.add({
			{ "<leader>b", group = "Buffer Mgmt" },
			{ "<leader>f", group = "Find & Search" },
			{ "<leader>F", group = "Formatting" },
			{ "<leader>l", group = "Language Server" },
			{ "<leader>t", group = "Terminal Operations" },
			{ "<leader>w", group = "Windows mgmt" },
			{ "<leader>r", group = "Reading" },
		})
	end,
	keys = {
		-- Top-level mappings
		{ "<leader>a", "<CMD>Alpha<CR>", desc = "Alpha" },
		{ "<leader>g", "<CMD>LazyGit<CR>", desc = "Git" },
		{ "<leader>q", "<CMD>q!<CR>", desc = "Quit" },
		{ "<leader>s", "<CMD>w!<CR>", desc = "Save" },
		{ "<leader>R", "<CMD>source $MYVIMRC<CR>", desc = "Reload" },

		-- Reading group
		{ "<leader>rt", "<CMD>Twilight<CR>", desc = "Twilight" },
		{ "<leader>rz", "<CMD>ZenMode<CR>", desc = "Zen" },

		-- Buffer Mgmt group
		{ "<leader>bc", "<cmd>BufferLineCloseOthers<CR>", desc = "Close all buffer" },
		{ "<leader>bn", "<CMD>BufferlineCycleNext<CR>", desc = "Next buffer" },
		{ "<leader>bp", "<CMD>BufferlineCyclePrevious<CR>", desc = "Previous buffer" },
		{ "<leader>bf", "<cmd>BufferLinePick<CR>", desc = "Picker" },

		-- Find & Search group
		{
			"<leader>fb",
			"<CMD>lua require('telescope.builtin').buffers(require('telescope.themes').get_dropdown{previewer = true})<cr>",
			desc = "Buffer",
		},
		{ "<leader>ff", "<CMD>Telescope find_files<CR>", desc = "Files" },
		{
			"<leader>fh",
			function()
				require("flash").treesitter_search()
			end,
			desc = "Flash treesitter",
		},
		{
			"<leader>fj",
			function()
				require("flash").jump()
			end,
			desc = "Jump",
		},
		{ "<leader>fp", "<CMD>Telescope conduct projects<CR>", desc = "Projects" },
		{ "<leader>fS", "<CMD>Telescope conduct sessions<CR>", desc = "Sessions" },

		-- Formatting
		{
			"<leader>Ff",
			function()
				require("conform").format({
					lsp_fallback = true,
					async = false,
					timeout_ms = 1000,
				})
			end,
			desc = "Format",
		},

		-- Language Server group
		{ "<leader>la", vim.lsp.buf.code_action, desc = "Code actions" },
		{ "<leader>ld", vim.lsp.buf.declaration, desc = "Defs" },
		{ "<leader>lD", "<CMD>Telescope lsp_references<CR>", desc = "Def references" },
		{ "<leader>li", "<CMD>Telescope lsp_implementations<CR>", desc = "Type implementations" },
		{ "<leader>lk", vim.lsp.buf.hover, desc = "Documentation" },
		{ "<leader>lr", vim.lsp.buf.rename, desc = "Rename" },
		{ "<leader>lt", "<CMD>Telescope lsp_type_definitions<CR>", desc = "Type defs" },

		-- Terminal Operations group
		{ "<leader>tf", "<CMD>ToggleTerm direction=float<CR>", desc = "Float" },
		{ "<leader>tt", "<CMD>ToggleTerm<CR>", desc = "Toggle" },

		-- Windows mgmt group
		{ "<leader>ws", "<C-w>v", desc = "V-Split" },
		{ "<leader>wv", "<C-w>s", desc = "H-Split" },
		{ "<leader>we", "<C-w>=", desc = "Even Steven" },
		{ "<leader>wto", "<CMD>tabopen<cr>", desc = "Open Tab" },
		{ "<leader>wtc", "<CMD>tabclose<cr>", desc = "Close Tab" },
		{ "<leader>wtn", "<CMD>tabnext<cr>", desc = "Next Tab" },
		{ "<leader>wtp", "<CMD>tabprevious<cr>", desc = "Previous Tab" },
	},
}
