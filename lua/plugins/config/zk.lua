local map = vim.keymap.set
local zk = require("zk")

zk.setup({
    picker = "fzf_lua"
})

map("n", "<leader>fn", function() zk.edit() end, {desc="Open note picker for notebook"})
