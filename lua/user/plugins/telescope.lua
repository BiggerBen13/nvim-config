-- plugins/telescope.lua:
return {
    "nvim-telescope/telescope.nvim",
    tag = "0.1.5",
    -- or                              , branch = "0.1.x",
    dependencies = { "nvim-lua/plenary.nvim" },
    keys = {
        { "<leader>ff" },
        { "<leader>fb" },
        { "<leader>fh" },
        { "<leader>fg" },
        { "<leader>fp" },
        { "<leader>ft" },
    },
    config = function() require "user.plugins.config.telescope" end,
}
