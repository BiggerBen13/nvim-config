vim.g.rustaceanvim = {
    -- LSP configuration
    server = {
        default_settings = {
            ["rust-analyzer"] = {
                cargo = {
                    features = "all"
                }
            }
        }
    }
}
