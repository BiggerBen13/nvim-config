return function(args)
    local bufnr = args.buf
    local client = vim.lsp.get_client_by_id(args.data.client_id)

    if client == nil then
        vim.notify("unable to get lsp!")
        return
    end

    local function opts(desc)
        return { buffer = bufnr, desc = desc }
    end

    -- Telescope include for Telescope Lsp Mappings
    local fzf = require("fzf-lua")
    local map = vim.keymap.set

    -- General Lsp Bindings
    -- vim.keymap.set("n", "gD", vim.lsp.buf.declaration, opts "Go to declaration")
    -- optional capabilites {{{1
    if client.supports_method "textDocument/implementation" then
        map("n", "gi", vim.lsp.buf.implementation, opts "LSP goto definiton")
    end

    if client.supports_method "textDocument/signatureHelp" then
        map("n", "<leader>sh", vim.lsp.buf.signature_help, opts "LSP show signature help")
    end

    if client.supports_method "workspace/WorkspaceFolders" then
        map("n", "<leader>wa", vim.lsp.buf.add_workspace_folder, opts "LSP add workspace folder")
        map("n", "<leader>wr", vim.lsp.buf.remove_workspace_folder, opts "LSP remove workspace folder")
        map("n", "<leader>wl", function() print(vim.inspect(vim.lsp.buf.list_workspace_folders())) end,
            { desc = "LSP list workspace folder" })
    end

    if client.supports_method "textDocument/rename" then
        map("n", "<leader>rn", vim.lsp.buf.rename, opts "LSP rename")
    end

    if client.supports_method "textDocument/codeAction" then
        map({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, opts "LSP code action")
    end


    if client.supports_method "textDocument/references" then
        map("n", "<leader>gr", fzf.lsp_references, opts("LSP show references"))
    end

    if client.supports_method "workspace/symbol" then
        map("n", "<leader>gS", fzf.lsp_workspace_symbols, opts("Show workspace symbols"))
    end

    if client.supports_method "textDocument/documentSymbol" then
        map("n", "<leader>gs", fzf.lsp_document_symbols, opts "LSP show document symbols")
    end

    if client.supports_method "textDocument/typeDefinition" then
        map("n", "<leader>D", fzf.lsp_typedefs, opts("LSP show type definions"))
    end

    if client.supports_method "textDocument/Definition" then
        map("n", "<leader>d", fzf.lsp_definitions, opts("LSP show all definitions"))
    end

    map("n", "<leader>cf", function() require "conform".format { async = false } end, { desc = "LSP format" })


    -- vim.api.nvim_buf_set_option(bufnr, "formatexpr", "v:lua.vim.lsp.formatexpr()")
    vim.api.nvim_set_option_value("formatexpr", nil, { buf = bufnr })
    vim.api.nvim_set_option_value("omnifunc", "v:lua.vim.lsp.omnifunc", { buf = bufnr })
    vim.api.nvim_set_option_value("tagfunc", "v:lua.vim.lsp.tagfunc", { buf = bufnr })

    if client.supports_method "textDocument/semanticTokens" then
        client.server_capabilities.semanticTokensProvider = nil
    end

    if client.supports_method "textDocument/inlayHint" then
        vim.lsp.inlay_hint.enable(false)
        map("n", "<leader>ih", function() vim.lsp.inlay_hint.enable(not vim.lsp.inlay_hint.is_enabled({ nil })) end,
            { desc = "Toggle Lsp Inlay Hints" })
    end
    -- }}}1
end

-- vim:foldmethod=marker
