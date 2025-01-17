require("trouble").setup({
    focus = false,
    ---@type trouble.Window.opts
    preview = { size = { width = 0.3 } },
    --@type table<string, trouble.Mode>
    modes = {
        diagnostics = {
            -- auto_open = true,
            -- auto_close = true,
            ---@type trouble.Window.opts
            win = { size = {width = 0.3}, position = "right" },
        },
    }
})
