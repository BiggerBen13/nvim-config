vim.api.nvim_create_autocmd("LspAttach", {
    callback = require "user.core.autocommands.lsp-keybinds",
})

vim.api.nvim_create_autocmd("User", {
    pattern = "SetRustKeybinds",
    once = true,
    callback = function() require "user.core.autocommands.rust-keybinds" end,
})
