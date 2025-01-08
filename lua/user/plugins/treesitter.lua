
return {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    ft = LSP_FT,
    config = function() require"user.plugins.config.treesitter" end
}

