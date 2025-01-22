OBSIDIAN_VAULTS = { "/Volumes/NOTES/Vault13/*.md" }

return {
    "epwalsh/obsidian.nvim",
    version = "*",
    lazy = true,
    event = function()
        local events = {}
        for k, _ in pairs(OBSIDIAN_VAULTS) do
            table.insert(events, "BufReadPre " .. k)
            table.insert(events, "BufNewFile " .. k)
        end
        return events
    end,
    dependencies = {
        "nvim-lua/plenary.nvim",
        "nvim-treesitter/nvim-treesitter",
    },
    config = function()
        require "user.plugins.config.obsidian"
    end
}
