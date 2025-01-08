return {
    "williamboman/mason.nvim",
    -- event = { "VeryLazy" },
    cmd = { "Mason" },
    ft = LSP_FT
    ,
    config = function() require "user.plugins.config.mason" end,
    dependencies = {
        "williamboman/mason-lspconfig.nvim"
    },
}
