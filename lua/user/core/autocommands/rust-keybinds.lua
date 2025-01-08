local map = vim.keymap.set

map("n", "<leader>ca", function() vim.cmd.RustLsp("codeAction") end,
    { desc = "Grouped codeactions through rustacean.nvim" })
