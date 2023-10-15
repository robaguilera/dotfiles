return {
	"stevearc/oil.nvim",
	config = function()
		local oil = require("oil")

		oil.setup({
			-- buf_options = {
			--     buflisted = false,
			--     bufhidden = "hide",
			-- },
			columns = { "icon" },
			-- default_file_explorer = true,
			-- restore_win_options = true,
			skip_confirm_for_simple_edits = true,
			-- float = {
			--     border = "rounded",
			-- },
			-- preview = {
			--     border = "rounded",
			-- },
			-- view_options = {
			--     show_hidden = true,
			-- },
		})
	end,
}
