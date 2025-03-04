local lspconfig = require("lspconfig")

local servers = {
    rust_analyzer = {},
    lua_ls = {},
    clangd = {},
    zls = {
        cmd = { "/Users/biggerben/home-bin/zls" },
        root_dir = vim.fn.getcwd(),
        settings = {
            zls = {
                zig_exe_path = "/Users/biggerben/home-bin/zig"
            }
        }
    },
    glsl_analyzer = {},
    wgsl_analyzer = {},
    tinymist = require "user.plugins.config.lsps.tinymist",
    nil_ls = {},
    nushell = {},
    taplo = {},
    hls = {},
    markdown_oxide = {},
    cssls = {},
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
