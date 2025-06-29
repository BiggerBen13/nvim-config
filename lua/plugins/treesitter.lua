return {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    ft = LSP_FT,
    config = function() require "plugins.config.treesitter" end,
}
