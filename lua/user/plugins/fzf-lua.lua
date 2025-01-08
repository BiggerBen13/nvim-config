return {
    "ibhagwan/fzf-lua",
    lazy = true,
    keys = {
        { "<leader>ff" },
        { "<leader>fb" },
        { "<leader>fg" },
        { "<leader>fp" },
    },
    config = function() require "user.plugins.config.fzf-lua" end
}
