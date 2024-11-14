---@diagnostic disable: missing-fields
local configs = require("nvim-treesitter.configs")

configs.setup({
    ensure_installed = {
        "c",
        "lua",
        "vim",
        "rust",
        "vimdoc",
        "zig",
        "markdown",
        "markdown_inline",
        "norg",
    },
    sync_install = false,
    highlight = {
        enable = true,
        additional_vim_regex_highlighting = false
    },
    indent = { enable = true },
})
