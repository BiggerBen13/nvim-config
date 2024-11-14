vim.bo.textwidth = 80
vim.opt_local.colorcolumn = "80"

local b_doc = string.find(vim.fn.getcwd(), "/notes/")

-- local function restart_sioyek()
--         vim.system({ "sioyek", ARG_STR }, {text = true}, restart_sioyek)
-- end

local function open_live_preview()
    local input = vim.fn.input("open live preview? ")
    if string.find(input, "y") then
        ARG_STR = vim.lsp.buf.list_workspace_folders()[1] ..
            "/target" ..
            string.sub(vim.fn.getcwd(), string.len(vim.fn.expand('~') .. "/notes/")) ..
            '/' .. vim.fn.expand("%:rt") .. ".pdf"
        vim.system({ "sioyek", ARG_STR }, { detach = false })
    end
end

vim.api.nvim_create_augroup("TypstAutoGroup", { clear = true })

if b_doc then
    vim.api.nvim_create_autocmd("BufWrite", {
        pattern = "*.typ",
        group = "TypstAutoGroup",
        callback = open_live_preview,
        once = true,
    })
end
