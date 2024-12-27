return {
    "rebelot/kanagawa.nvim",
    config = function()
        vim.g.gruvbox_baby_transparent_mode = true
        vim.cmd.colorscheme "kanagawa"
    end,
    lazy = false,
}
