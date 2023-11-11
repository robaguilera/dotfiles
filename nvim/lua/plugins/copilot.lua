return {
	"jackMort/ChatGPT.nvim",
	cmd = { "ChatGPT", "ChatGPTRun", "ChatGPTEditWithInstruction" },
	-- event = { "BufReadPre", "BufNewFile" },
	config = function()
		require("chatgpt").setup({
			api_key_cmd = "op read op://personal/OpenAi/text --no-newline",
		})
	end,
	dependencies = {
		"MunifTanjim/nui.nvim",
		"nvim-lua/plenary.nvim",
		"nvim-telescope/telescope.nvim",
	},
}
