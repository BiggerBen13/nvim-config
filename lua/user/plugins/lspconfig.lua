return {
    "neovim/nvim-lspconfig",
    config = function()
        require("user.plugins.config.lspconfig").init()
    end,
    ft = LSP_FT,
}
