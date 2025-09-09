return {
	"stevearc/oil.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	opts = {
		buf_options = {
			buflisted = false,
			bufhidden = "hide",
		},
		columns = { "icon" },
		default_file_explorer = true,
		delete_to_trash = true,
		skip_confirm_for_simple_edits = true,
		use_default_keymaps = true,
		view_options = {
			show_hidden = false,
		},
	},
	keys = {
		{
			"-",
			function()
				require("oil").open_float()
			end,
			mode = "n",
			desc = "Open Oil in current directory",
		},
		{
			"_",
			function()
				require("oil").open_float(".")
			end,
			mode = "n",
			desc = "Open parent directory with Oil",
		},
	},
}
