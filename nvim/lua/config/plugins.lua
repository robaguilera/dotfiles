-- Bootstrapping packer
local ensure_packer = function()
	local fn = vim.fn
	local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
	if fn.empty(fn.glob(install_path)) > 0 then
		fn.system({ "git", "clone", "--depth", "1", "https://github.com/wbthomason/packer.nvim", install_path })
		vim.cmd([[packadd packer.nvim]])
		return true
	end
	return false
end

local packer_bootstrap = ensure_packer()

-- Only required if you have packer configured as `opt`
vim.cmd([[packadd packer.nvim]])

return require("packer").startup(function(use)
	-- Packer can manage itself
	use("wbthomason/packer.nvim")
	use("nvim-telescope/telescope.nvim")
	use({
		"nvim-telescope/telescope-fzf-native.nvim",
		run = "cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release && cmake --install build --prefix build",
	})

	-- Navigating
	-- use("nvim-tree/nvim-tree.lua")
	-- use("nvim-tree/nvim-web-devicons")
	use("stevearc/oil.nvim")

	-- Status
	use({ "nvim-lualine/lualine.nvim", dependencies = { "nvim-tree/nvim-web-devicons" } })

	-- Functionality
	use("tpope/vim-commentary")
	use("tpope/vim-surround")
	use("jiangmiao/auto-pairs")
	use("lukas-reineke/indent-blankline.nvim")
	use("rcarriga/nvim-notify")
	use({
		"folke/flash.nvim",
		keys = {
			{
				"s",
				mode = { "n", "o", "x" },
				function()
					require("flash").jump()
				end,
				desc = "Flash",
			},
			{
				"S",
				mode = { "n", "o", "x" },
				function()
					require("flash").treesitter()
				end,
				desc = "Flash Treesitter",
			},
			{
				"r",
				mode = "o",
				function()
					require("flash").remote()
				end,
				desc = "Remote Flash",
			},
			{
				"R",
				mode = { "o", "x" },
				function()
					require("flash").treesitter_search()
				end,
				desc = "Treesitter Search",
			},
			{
				"<c-s>",
				mode = { "c" },
				function()
					require("flash").toggle()
				end,
				desc = "Toggle Flash Search",
			},
		},
	})

	-- Tmux
	use({ "christoomey/vim-tmux-navigator", lazy = false })

	-- Git
	use("tpope/vim-fugitive")
	use({
		"kdheepak/lazygit.nvim",
		-- optional for floating window border decoration
		requires = {
			"nvim-lua/plenary.nvim",
		},
	})

	-- Best plugin ever
	use("folke/which-key.nvim")

	-- Terminal
	use("akinsho/toggleterm.nvim")

	-- I'm so pretty
	use({ "catppuccin/nvim", as = "catppuccin" })

	-- Syntax
	use("nvim-treesitter/nvim-treesitter", { run = ":TSUpdate" })

	-- lsp
	use({
		"VonHeikemen/lsp-zero.nvim",
		branch = "v2.x",
		requires = {
			-- LSP Support
			{ "neovim/nvim-lspconfig" }, -- Required
			{ "williamboman/mason.nvim" }, -- Optional
			{ "williamboman/mason-lspconfig.nvim" }, -- Optional

			-- Autocompletion
			{ "hrsh7th/nvim-cmp" }, -- Required
			{ "hrsh7th/cmp-nvim-lsp" }, -- Required
			{ "L3MON4D3/LuaSnip" }, -- Required
		},
	})
	use("jose-elias-alvarez/null-ls.nvim")
	if packer_bootstrap then
		require("packer").sync()
	end
end)
