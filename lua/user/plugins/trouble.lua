return {
    "folke/trouble.nvim",
    -- event = "LspAttach",
    cmd = "Trouble",
    -- opt = {},
    config = function() require("trouble").setup() end
}
