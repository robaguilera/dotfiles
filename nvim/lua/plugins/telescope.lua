return {
	"nvim-telescope/telescope.nvim",
	-- branch = 'master',
	branch = "0.1.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		-- Fuzzy Finder Algorithm which requires local dependencies to be built.
		-- Only load if `make` is available. Make sure you have the system
		-- requirements installed.
		{
			"nvim-telescope/telescope-fzf-native.nvim",
			-- NOTE: If you are having trouble with this installation,
			--       refer to the README for telescope-fzf-native for more instructions.
			build = "make",
			cond = function()
				return vim.fn.executable("make") == 1
			end,
		},
		"benfowler/telescope-luasnip.nvim", -- Allows to search the available snippets
		"nvim-telescope/telescope-live-grep-args.nvim", -- Enable passing arguments to ripgrep
	},
	config = function()
		require("telescope").setup({
			defaults = {
				prompt_prefix = "🔍 ",
				vimgrep_arguments = {
					"rg",
					"--color=never",
					"--no-heading",
					"--with-filename",
					"--line-number",
					"--column",
					"--smart-case",
				},
			},
			pickers = {
				find_files = {
					find_command = {
						"rg",
						"--files",
						"--hidden",
						"--ignore-file",
						vim.fn.expand("$HOME/.config/nvim/.rignore"),
					},
				},
				lsp_document_symbols = {
					show_line = true,
				},
			},
			extensions = {
				fzf = {
					fuzzy = true, -- false will only do exact matching
					override_generic_sorter = true, -- override the generic sorter
					override_file_sorter = true, -- override the file sorter
					case_mode = "smart_case", -- or "ignore_case" or "respect_case"
					-- the default case_mode is "smart_case"
				},
			},
		})
		-- pcall(require('telescope').load_extension, 'fzf')
		require("telescope").load_extension("fzf")
		require("telescope").load_extension("luasnip")
		require("telescope").load_extension("live_grep_args")
		require("telescope").load_extension("conduct")
		require("telescope").load_extension("harpoon")
	end,
}
