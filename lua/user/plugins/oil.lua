return {
    'stevearc/oil.nvim',
    opts = {
        default_file_explorer = true
    },
    lazy = false,
    -- Optional dependencies
    -- dependencies = { "nvim-tree/nvim-web-devicons" },
    keys = {
        { "<leader>oo", "<cmd>Oil<cr>" }
    },
    -- config = function()
    --    require("").setup({
    --    })
    -- end
}
