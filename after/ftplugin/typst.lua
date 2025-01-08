vim.bo.textwidth = 80
vim.opt_local.colorcolumn = "80"

local b_doc = string.find(vim.fn.getcwd(), "/notes/")

local function open_live_preview()
    -- local input = vim.fn.input("open live preview? ")
    -- if string.find(input, "y") then
        local arg_str = vim.lsp.buf.list_workspace_folders()[1] ..
            "/target" ..
            string.sub(vim.fn.getcwd(), string.len(vim.fn.expand('~') .. "/notes/")) ..
            '/' .. vim.fn.expand("%:rt") .. ".pdf"
        vim.system({ "sioyek", arg_str }, { detach = false })
    -- end
end

vim.api.nvim_create_user_command("TypstUtilsPreview", open_live_preview, {})
