return {
    "epwalsh/obsidian.nvim",
    version = "*",
    lazy = true,
    event = {
        -- If you want to use the home shortcut '~' here you need to call 'vim.fn.expand'.
        -- E.g. "BufReadPre " .. vim.fn.expand "~" .. "/my-vault/*.md"
        -- refer to `:h file-pattern` for more examples
        "BufReadPre /Volumes/NOTES/*.md",
        "BufNewFile /Volumes/NOTES/*.md",
    },
    dependencies = {
        "nvim-lua/plenary.nvim",
        "nvim-treesitter/nvim-treesitter",
    },
    config = function ()
        require "user.plugins.config.obsidian"
    end
}
