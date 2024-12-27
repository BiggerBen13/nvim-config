return {
    "nvim-neorg/neorg",
    lazy = true,
    -- event = "VeryLazy",
    cmd = {"Neorg"},
    config = function() require"user.plugins.config.neorg" end,
}
