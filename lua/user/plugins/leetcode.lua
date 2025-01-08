local arg = "leet"
return {
    "kawre/leetcode.nvim",
    build = ":TSUpdate html",
    dependencies = {
        "ibhagwan/fzf-lua",
        "MunifTanjim/nui.nvim",

        -- optional
        "nvim-treesitter/nvim-treesitter",
        -- "rcarriga/nvim-notify",
        "nvim-tree/nvim-web-devicons",
    },
    lazy = arg ~= vim.fn.argv()[1],
    opts = {
        lang = "rust",
        arg = arg,
    },
}
