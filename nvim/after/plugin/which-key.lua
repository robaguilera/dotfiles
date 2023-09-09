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
        c = {"<cmd>Bdelete!<CR>", "Close buffer"},
        n = {"<cmd>bnext<CR>", "Next buffer"},
        p = {"<cmd>bprevious<CR>", "Previous buffer"},
    },
    f = {
        name = "Find",
        b = {
            "<cmd>lua require('telescope.builtin').buffers(require('telescope.themes').get_dropdown{previewer = true})<cr>",
            "Buffer",
        },
        g = {
            "<cmd>lua require('telescope.builtin').git_files(require('telescope.themes').get_dropdown{previewer = true})<cr>",
            "Git file",
        },
        f = {
            "<cmd>lua require('telescope.builtin').find_files(require('telescope.themes').get_dropdown{previewer = true})<cr>",
            "Files",
        },
        s = {
            "<cmd>lua require('telescope.builtin').grep_string(require('telescope.themes').get_dropdown{previewer = true})<cr>",
            "String",
        },
    },
    w = {
        name = "Window mgnt",
        s = {
            name = "Split",
            h = {"<cmd>sp<CR>", "Horizontal"},
            v = {"<cmd>vs<CR>", "Vertical"},
        },
    },
    ["e"] = { "<cmd>NvimTreeToggle<CR>", "Explorer"},
    ["s"] = { "<cmd>w!<CR>", "Save"},
    ["q"] = { "<cmd>q!<CR>", "Quit"},
}

which_key.register(mappings, opts)
