return {
    'mrcjkb/rustaceanvim',
    version = '^5',
    lazy = true,
    ft = { "rust" },
    init = function()
        require "user.plugins.config.rustacean"
    end,
    config = function()
        vim.api.nvim_exec_autocmds("User", { pattern = "SetRustKeybinds" })
    end
}
