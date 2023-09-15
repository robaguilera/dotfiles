local status_ok, which_key = pcall(require, "which-key")
if not status_ok then
	return
end

local opts = {
	mode = "n", -- Normal mode
	prefix = "<leader>",
}

local mappings = {
	b = {
		name = "Buffers",
		c = { "<cmd>Bdelete!<CR>", "Close buffer" },
		n = { "<cmd>bnext<CR>", "Next buffer" },
		p = { "<cmd>bprevious<CR>", "Previous buffer" },
	},
	f = {
		name = "Find",
		b = {
			"<cmd>lua require('telescope.builtin').buffers(require('telescope.themes').get_dropdown{previewer = true})<cr>",
			"Buffer",
		},
		g = {
			"<cmd>Telescope git_files<CR>",
			"Git files",
		},
		f = {
			"<cmd>Telescope find_files<CR>",
			"Files",
		},
		s = {
			"<cmd>Telescope grep_string<CR>",
			"String",
		},
	},
	g = {
		name = "Git",
		c = { "<cmd>LazyGit<CR>", "Git client" },
	},
	t = {
		name = "Terminal",
		f = { "<cmd>ToggleTerm direction=float<CR>", "Float" },
		t = { "<cmd>ToggleTerm<CR>", "Toggle" },
	},
	x = {
		name = "Tmux",
		h = { "<cmd> TmuxNavigateLeft<CR>", "window left" },
		l = { "<cmd> TmuxNavigateRight<CR>", "window right" },
		j = { "<cmd> TmuxNavigateDown<CR>", "window down" },
		k = { "<cmd> TmuxNavigateUp<CR>", "window up" },
	},
	s = {
		name = "Split",
		h = { "<cmd>sp<CR>", "Horizontal" },
		v = { "<cmd>vs<CR>", "Vertical" },
	},
	["e"] = { "<cmd>Oil<CR>", "Explorer" },
	["q"] = { "<cmd>q!<CR>", "Quit" },
	["w"] = { "<cmd>w!<CR>", "Save" },
}

which_key.register(mappings, opts)
