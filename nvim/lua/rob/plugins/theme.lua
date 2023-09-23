return {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
    config = function()
        vim.cmd([[colorscheme catppuccin-mocha]])
    end,
    opts = {
        setup = {
            transparent_background = true,
            dim_inactive = {
                enabled = true, -- dims the background color of inactive window
                shade = "dark",
                percentage = 0.02, -- percentage of the shade to apply to the inactive window
            },
        },
        integrations = {
            alpha = true,
            cmp = true,
            flash = true,
            gitsigns = true,
            illuminate = true,
            indent_blankline = { enabled = true },
            lsp_trouble = true,
            mason = true,
            mini = true,
            native_lsp = {
                enabled = true,
                underlines = {
                    errors = { "undercurl" },
                    hints = { "undercurl" },
                    warnings = { "undercurl" },
                    information = { "undercurl" },
                },
            },
            navic = { enabled = true, custom_bg = "lualine" },
            neotest = true,
            noice = true,
            notify = true,
            neotree = true,
            semantic_tokens = true,
            telescope = true,
            treesitter = true,
            which_key = true,
        },
    },
}
-- return {
--     {
--         "bluz71/vim-nightfly-guicolors",
--         priority = 1000, -- make sure to load this before all the other start plugins
--         config = function()
--             -- load the colorscheme here
--             vim.cmd([[colorscheme nightfly]])
--             -- Lua initialization file
--         end,
--     },
-- }
