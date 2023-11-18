return {
	"folke/which-key.nvim",
	event = "VeryLazy",
	config = function()
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
				c = { "<cmd>bdelete!<CR>", "Close buffer" },
				n = { "<cmd>bnext<CR>", "Next buffer" },
				p = { "<cmd>bprevious<CR>", "Previous buffer" },
			},
			c = {
				name = "ChatGPT",
				c = { "<cmd>ChatGPT<CR>", "ChatGPT" },
				e = { "<cmd>ChatGPTEditWithInstruction<CR>", "Edit with instruction", mode = { "n", "v" } },
				g = { "<cmd>ChatGPTRun grammar_correction<CR>", "Grammar Correction", mode = { "n", "v" } },
				t = { "<cmd>ChatGPTRun translate<CR>", "Translate", mode = { "n", "v" } },
				k = { "<cmd>ChatGPTRun keywords<CR>", "Keywords", mode = { "n", "v" } },
				d = { "<cmd>ChatGPTRun docstring<CR>", "Docstring", mode = { "n", "v" } },
				a = { "<cmd>ChatGPTRun add_tests<CR>", "Add Tests", mode = { "n", "v" } },
				o = { "<cmd>ChatGPTRun optimize_code<CR>", "Optimize Code", mode = { "n", "v" } },
				s = { "<cmd>ChatGPTRun summarize<CR>", "Summarize", mode = { "n", "v" } },
				f = { "<cmd>ChatGPTRun fix_bugs<CR>", "Fix Bugs", mode = { "n", "v" } },
				x = { "<cmd>ChatGPTRun explain_code<CR>", "Explain Code", mode = { "n", "v" } },
				r = { "<cmd>ChatGPTRun roxygen_edit<CR>", "Roxygen Edit", mode = { "n", "v" } },
				l = {
					"<cmd>ChatGPTRun code_readability_analysis<CR>",
					"Code Readability Analysis",
					mode = { "n", "v" },
				},
			},
			f = {
				name = "Find",
				b = {
					"<cmd>lua require('telescope.builtin').buffers(require('telescope.themes').get_dropdown{previewer = true})<cr>",
					"Buffer",
				},
				f = {
					"<cmd>Telescope find_files<CR>",
					"Files",
				},
				h = {
					function()
						require("flash").treesitter_search()
					end,
					"Flash treesitter",
				},
				j = {
					function()
						require("flash").jump()
					end,
					"Jump",
				},
				p = {
					"<cmd>Telescope conduct projects<CR>",
					"Projects",
				},
				S = {
					"<cmd>Telescope conduct sessions<CR>",
					"Sessions",
				},
			},
			l = {
				name = "LSP",
				a = { vim.lsp.buf.code_action, "Code actions" },
				d = { vim.lsp.buf.declaration, "Defs" },
				D = { "<cmd>Telescope lsp_references<CR>", "Def references" },
				i = { "<cmd>Telescope lsp_implementations<CR>", "Type implementations" },
				k = { vim.lsp.buf.hover, "Documentation" },
				r = { vim.lsp.buf.rename, "Rename" },
				t = { "<cmd>Telescope lsp_type_definitions<CR>", "Type defs" },
			},
			t = {
				name = "Tab",
				c = { "<cmd>tabclose<cr>", "Close Tab" },
				n = { "<cmd>tabnext<cr>", "Next Tab" },
				p = { "<cmd>tabprevious<cr>", "Next Tab" },
			},
			T = {
				name = "Terminal",
				f = { "<cmd>ToggleTerm direction=float<CR>", "Float" },
				t = { "<cmd>ToggleTerm<CR>", "Toggle" },
			},
			x = {
				name = "Tmux",
				h = { "<cmd>TmuxNavigateLeft<CR>", "window left" },
				l = { "<cmd>TmuxNavigateRight<CR>", "window right" },
				j = { "<cmd>TmuxNavigateDown<CR>", "window down" },
				k = { "<cmd>TmuxNavigateUp<CR>", "window up" },
			},
			w = {
				name = "Window",
				s = { "<cmd>vs<CR>", "Vertical" },
				v = { "<cmd>sp<CR>", "Horizontal" },
			},
			s = {
				name = "Search",
			},
			["a"] = { "<cmd>Alpha<CR>", "Alpha" },
			["g"] = { "<cmd>LazyGit<CR>", "Git" },
			["q"] = { "<cmd>q!<CR>", "Quit" },
			["S"] = { "<cmd>w!<CR>", "Save" },
		}

		which_key.register(mappings, opts)
	end,
}
