-- Executes the lsp-keybinds file to set all lsp related keybinds based on lsp capabilities
vim.api.nvim_create_autocmd("LspAttach", {
    callback = require "user.core.autocommands.lsp-keybinds",
})

vim.api.nvim_create_autocmd("User", {
    pattern = "SetRustKeybinds",
    once = true,
    callback = function() require "user.core.autocommands.rust-keybinds" end,
})
