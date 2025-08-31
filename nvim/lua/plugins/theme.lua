return {
	{
		-- rose pine
		"rose-pine/neovim",
		name = "rose-pine",
		priority = 1000,
		config = function()
			require("rose-pine").setup({

				--- @usage 'auto'|'main'|'moon'|'dawn'
				variant = "moon",
				--- @usage 'main'|'moon'|'dawn'
				dark_variant = "moon",
				bold_vert_split = true,
				dim_nc_background = true,
				disable_background = true,
				disable_float_background = true,
				disable_italics = false,
				highlight_groups = {
					TelescopePromptBorder = { fg = "muted" },
					TelescopeResultsBorder = { fg = "muted" },
					TelescopePreviewBorder = { fg = "muted" },
				},
			})
			vim.cmd.colorscheme("rose-pine")
		end,
	},
	{
		"diegoulloao/neofusion.nvim",
		priority = 1000,
		config = true,
		opts = {
			terminal_colors = true, -- add neovim terminal colors
			undercurl = true,
			underline = true,
			bold = true,
			italic = {
				strings = true,
				emphasis = true,
				comments = true,
				operators = false,
				folds = true,
			},
			strikethrough = true,
			invert_selection = false,
			invert_signs = false,
			invert_tabline = false,
			invert_intend_guides = false,
			inverse = true, -- invert background for search, diffs, statuslines and errors
			palette_overrides = {},
			overrides = {},
			dim_inactive = false,
			transparent_mode = false,
		},
	},
}
