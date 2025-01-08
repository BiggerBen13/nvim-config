local lspconfig = require("lspconfig")

local servers = {
    -- cssls = {},
    -- html = {},
    -- htmx = {},
    -- rust_analyzer = require "user.plugins.config.lsps.rust_analyzer",
    lua_ls = {},
    clangd = {},
    zls = {},
    glsl_analyzer = {},
    -- markdown_oxide = {},
    wgsl_analyzer = {},
    tinymist = require "user.plugins.config.lsps.tinymist",
    nil_ls = {},
    nushell = {},
    taplo = {},
}

local M = {}

M.on_init = function(client, bufnr)
end

M.on_attach = function(client, bufnr)
    vim.api.nvim_set_option_value("formatexpr", nil, { buf = bufnr })
    vim.api.nvim_set_option_value("omnifunc", "v:lua.vim.lsp.omnifunc", { buf = bufnr })
    vim.api.nvim_set_option_value("tagfunc", "v:lua.vim.lsp.tagfunc", { buf = bufnr })
end

M.init = function()
    for name, opts in pairs(servers) do
        opts.on_init = M.on_init
        opts.on_attach = M.on_attach
        -- opts.capabilities = require("cmp_nvim_lsp").default_capabilities()
        lspconfig[name].setup(opts)
    end
end

return M

-- vim:foldmethod=marker
