require("mason").setup()
require("mason-lspconfig").setup({
    ensure_installed = {
        "lua_ls",
        "clangd",
        "glsl_analyzer",
        "wgsl_analyzer",
        "cssls",
        "html",
        "htmx",
    }
})
