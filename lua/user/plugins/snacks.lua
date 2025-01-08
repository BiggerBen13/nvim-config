return {
    "folke/snacks.nvim",
    priority = 1000,
    lazy = false,
    config = function ()
        require "user.plugins.config.snacks.snacks"
    end,
    keys = {
        {"<leader>lgo", function () Snacks.lazygit() end, desc = "Lazygit"}
    }
}
