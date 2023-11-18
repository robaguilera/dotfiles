return {
	"akinsho/toggleterm.nvim",
	cmd = "ToggleTerm",
	config = function()
		require("toggleterm").setup({
			shade_terminal = false,
			size = 5,
			start_in_insert = true,
		})
	end,
}
