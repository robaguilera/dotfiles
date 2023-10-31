return {
	"jackMort/ChatGPT.nvim",
	event = { "BufReadPre", "BufNewFile" },
	config = function()
		require("chatgpt").setup({
			api_key_cmd = "pass show nvim/copilot",
		})
	end,
	dependencies = {
		"MunifTanjim/nui.nvim",
		"nvim-lua/plenary.nvim",
		"nvim-telescope/telescope.nvim",
	},
}
