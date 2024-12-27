require("snacks").setup({
    bigfile = { enabled = false },
    dashboard = {
        require("user.plugins.config.snacks.dashboard")
    },
    indent = { enabled = false },
    input = { enabled = false },
    notifier = { enabled = false },
    quickfile = { enabled = false },
    scroll = { enabled = false },
    statuscolumn = { enabled = false },
    words = { enabled = false },
})
