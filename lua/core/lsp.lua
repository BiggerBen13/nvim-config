local function on_attach(args)
    local client = vim.lsp.get_client_by_id(args.data.client_id)

    if client == nil then
        vim.notify_once("couldn't find lsp")
        return
    end

    local bufnr = args.buffer

    local function opt(desc)
        return { desc = desc, buffer = bufnr }
    end

    local map = vim.keymap.set
    local fzf = require("fzf-lua")

    --- Toggle Virtual lines

    if client:supports_method "textDocument/completion" then
        vim.bo.completeopt = "noselect,menu"
        vim.lsp.completion.enable(true, client.id, bufnr, { autotrigger = true })
    end

    if client:supports_method "textDocument/formatting" then
        map("n", "grF", function() vim.lsp.buf.format({ async = false }) end, opt("Format buffer"))
    end

    if client:supports_method "textDocument/documentSymbol" then
        map("n", "gO", fzf.lsp_workspace_symbols, opt("List document symbols"))
    end

    if client:supports_method "workspace/workspaceSymbols" then
        map("n", "grO", fzf.lsp_document_symbols, opt("List document symbols"))
    end
end


local server = {
    "vsc-jsonls",
    "luals",
    "clangd",
    "nushell",
    "zls",
}

local function init()
    vim.api.nvim_create_autocmd("LspAttach", {
        callback = on_attach,
    })

    vim.lsp.enable(server)
end

init()
