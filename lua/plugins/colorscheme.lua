-- #Oxocarbon
return {
    "nyoom-engineering/oxocarbon.nvim",
    priority = 1000,
    config = function()
        vim.cmd.colorscheme "oxocarbon"
        --Transparent nvim background
        vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
        vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
        vim.api.nvim_set_hl(0, "NormalNC", { bg = "none" })
        -- vim.opt.background = "dark"
    end,
    lazy = false,
}
-- # Gruvbox
-- return {
--     "luisiacc/gruvbox-baby",
--     priority = 1000,
--     config = function()
--         vim.cmd.colorscheme "gruvbox-baby"
--     end,
--     lazy = false,
-- }
