return {
    "folke/trouble.nvim",
    -- event = "LspAttach",
    cmd = "Trouble",
    -- opt = {},
    config = function() require"user.plugins.config.trouble" end
}
