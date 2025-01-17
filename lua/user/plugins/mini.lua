return {
    'echasnovski/mini.nvim',
    event = "VeryLazy",
    version = '*',
    config = function()
        require("user.plugins.config.mini")
    end
}
