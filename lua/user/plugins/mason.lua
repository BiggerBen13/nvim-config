return {
    "williamboman/mason.nvim",
    -- event = { "VeryLazy" },
    cmd = { "Mason" },
    ft = {
        "nix",
        "typst",
        "gdscript",
        "markdown",
        "lua",
        "rust",
        "c",
        "cpp",
        "glsl",
        "zig",
        "wgsl",
        "html",
        "css",
    },
    config = function() require "user.plugins.config.mason" end,
    dependencies = {
        "williamboman/mason-lspconfig.nvim"
    },
}
