local map = vim.keymap.set
vim.g.mapleader = " "
vim.g.localmapleader = "\\"

map("n", "<leader>gp", "<CMD>bp<CR>", { desc = "goto previous buffer" })
map("n", "<leader>gn", "<CMD>bn<CR>", { desc = "goto next buffer" })
map({ "n", "i" }, "<C-l>", "<c-g>u<Esc>[s1z=`]a<c-g>u", { desc = "correct last spelling mistake", noremap = true })


map("n", "[d", vim.diagnostic.goto_prev, {desc = "goto previous diagnostic"})
map("n", "]d", vim.diagnostic.goto_next, {desc = "goto next diagnostic"})

-- local oil_mappings = {}
-- function oil_mappings:setup()
--     local oil = require("oil")
--     map("n", "<leader>of", oil.open_float(), {desc = "open oil floating window" })
-- end
