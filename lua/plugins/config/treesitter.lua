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
        "haskell",
        "typst",
        "norg",
    },
    sync_install = true,
    highlight = {
        enable = true,
        additional_vim_regex_highlighting = true,
    },
    indent = { enable = true },
})
