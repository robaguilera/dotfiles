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
				c = { "<CMD>bdelete!<CR>", "Close buffer" },
				n = { "<CMD>bnext<CR>", "Next buffer" },
				p = { "<CMD>bprevious<CR>", "Previous buffer" },
			},
			c = {
				name = "ChatGPT",
				c = { "<CMD>ChatGPT<CR>", "ChatGPT" },
				e = { "<CMD>ChatGPTEditWithInstruction<CR>", "Edit with instruction", mode = { "n", "v" } },
				g = { "<CMD>ChatGPTRun grammar_correction<CR>", "Grammar Correction", mode = { "n", "v" } },
				t = { "<CMD>ChatGPTRun translate<CR>", "Translate", mode = { "n", "v" } },
				k = { "<CMD>ChatGPTRun keywords<CR>", "Keywords", mode = { "n", "v" } },
				d = { "<CMD>ChatGPTRun docstring<CR>", "Docstring", mode = { "n", "v" } },
				a = { "<CMD>ChatGPTRun add_tests<CR>", "Add Tests", mode = { "n", "v" } },
				o = { "<CMD>ChatGPTRun optimize_code<CR>", "Optimize Code", mode = { "n", "v" } },
				s = { "<CMD>ChatGPTRun summarize<CR>", "Summarize", mode = { "n", "v" } },
				f = { "<CMD>ChatGPTRun fix_bugs<CR>", "Fix Bugs", mode = { "n", "v" } },
				x = { "<CMD>ChatGPTRun explain_code<CR>", "Explain Code", mode = { "n", "v" } },
				r = { "<CMD>ChatGPTRun roxygen_edit<CR>", "Roxygen Edit", mode = { "n", "v" } },
				l = {
					"<CMD>ChatGPTRun code_readability_analysis<CR>",
					"Code Readability Analysis",
					mode = { "n", "v" },
				},
			},
			f = {
				name = "Find",
				b = {
					"<CMD>lua require('telescope.builtin').buffers(require('telescope.themes').get_dropdown{previewer = true})<cr>",
					"Buffer",
				},
				f = {
					"<CMD>Telescope find_files<CR>",
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
					"<CMD>Telescope conduct projects<CR>",
					"Projects",
				},
				S = {
					"<CMD>Telescope conduct sessions<CR>",
					"Sessions",
				},
			},
			l = {
				name = "LSP",
				a = { vim.lsp.buf.code_action, "Code actions" },
				d = { vim.lsp.buf.declaration, "Defs" },
				D = { "<CMD>Telescope lsp_references<CR>", "Def references" },
				i = { "<CMD>Telescope lsp_implementations<CR>", "Type implementations" },
				k = { vim.lsp.buf.hover, "Documentation" },
				r = { vim.lsp.buf.rename, "Rename" },
				t = { "<CMD>Telescope lsp_type_definitions<CR>", "Type defs" },
			},
			t = {
				name = "Terminal",
				f = { "<CMD>ToggleTerm direction=float<CR>", "Float" },
				t = { "<CMD>ToggleTerm<CR>", "Toggle" },
			},
			T = {
				name = "Tab",
				c = { "<CMD>tabclose<cr>", "Close Tab" },
				n = { "<CMD>tabnext<cr>", "Next Tab" },
				p = { "<CMD>tabprevious<cr>", "Next Tab" },
			},
			x = {
				name = "Tmux",
				h = { "<CMD>TmuxNavigateLeft<CR>", "window left" },
				l = { "<CMD>TmuxNavigateRight<CR>", "window right" },
				j = { "<CMD>TmuxNavigateDown<CR>", "window down" },
				k = { "<CMD>TmuxNavigateUp<CR>", "window up" },
			},
			w = {
				name = "Window",
				s = { "<CMD>vs<CR>", "Vertical" },
				v = { "<CMD>sp<CR>", "Horizontal" },
			},
			s = {
				name = "Search",
			},
			h = {
				name = "Harpoon",
				a = { "<CMD>lua require('harpoon.mark').add_file()<CR>", "Add file" },
				h = { "<CMD>Telescope harpoon marks<CR>", "Telescope Menu" },
				m = { "<CMD>lua require('harpoon.ui').toggle_quick_menu()<CR>", "Menu" },
			},
			["a"] = { "<CMD>Alpha<CR>", "Alpha" },
			["g"] = { "<CMD>LazyGit<CR>", "Git" },
			["q"] = { "<CMD>q!<CR>", "Quit" },
			["S"] = { "<CMD>w!<CR>", "Save" },
		}

		which_key.register(mappings, opts)
	end,
}
