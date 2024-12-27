return {
    "neovim/nvim-lspconfig",
    config = function()
        require("user.plugins.config.lspconfig").init()
    end,
    dependencies = {
        { "hrsh7th/cmp-nvim-lsp" },
    }
}
