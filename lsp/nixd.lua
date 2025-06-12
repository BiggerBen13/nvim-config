---@type vim.lsp.Config
return {
    settings = {
        nixpkgs = {
            expr = "import <nixpkgs> { }",
        },
    }
}
