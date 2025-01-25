return {
    "nvim-neorg/neorg",
    lazy = false,  -- Disable lazy loading as some `lazy.nvim` distributions set `lazy = true` by default
    version = "*", -- Pin Neorg to the latest stable release
    config = function()
        require "user.plugins.config.neorg"
    end,
    dependencies = {
        { "benlubas/neorg-interim-ls" },
        { "benlubas/neorg-query" },
    }
}
