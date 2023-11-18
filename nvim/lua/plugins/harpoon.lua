return {
	"ThePrimeagen/harpoon",
	cmd = "Harpoon",
	dependencies = {
		"nvim-lua/plenary.nvim",
	},
	config = function()
		require("harpoon").setup({})
	end,
}
