-- # Gruvbox
return {
    "luisiacc/gruvbox-baby",
    priority = 1000,
    config = function()
        -- Enable transparent mode
        vim.g.gruvbox_baby_transparent_mode = 1
        vim.cmd.colorscheme "gruvbox-baby"
    end,
    lazy = false,
}
