local opt = vim.opt
opt.autoindent = true
opt.tabstop = 4
opt.smarttab = true
opt.relativenumber = true
opt.title = true
opt.expandtab = true
opt.shiftwidth = 4
opt.conceallevel = 1
opt.wrap = false

vim.g.netrw_bufsettings = "noma nomod nonu nobl nowrap ro rnu"

opt.formatoptions = {
    ["1"] = false,
    ["2"] = false, -- Use indent from 2nd line of a paragraph
    q = true,      -- continue comments with gq"
    c = true,      -- Auto-wrap comments using textwidth
    r = false,     -- Continue comments when pressing Enter
    n = false,     -- Recognize numbered lists
    t = false,     -- autowrap lines using text width value
    j = true,      -- remove a comment leader when joining lines.
    o = false,
    -- Only break if the line was not longer than 'textwidth' when the insert
    -- started and only at a white character that has been entered during the
    -- current insert command.
    l = true,
    v = true,
}

LSP_FT = {
    "haskell",
    "nix",
    "typst",
    -- "gdscript",
    "markdown",
    "lua",
    "rust",
    "c",
    "cpp",
    "glsl",
    "zig",
    -- "wgsl",
    "html",
    "css",
    "nu",
    "toml",
}

---@type vim.diagnostic.Opts
local diagnostic_opts = {
    underline = true,
    signs = {
        text = {
            [vim.diagnostic.severity.ERROR] = " ",
            [vim.diagnostic.severity.WARN] = " ",
            [vim.diagnostic.severity.HINT] = " ",
            [vim.diagnostic.severity.INFO] = " "
        },
    },
    virtual_lines = false,
    virtual_text = true,
}
vim.diagnostic.config(diagnostic_opts)

-- neovide options
if vim.g.neovide then
    -- Neovide Mac-OS Compatability
    vim.g.neovide_input_macos_alt_is_meta = 'both'

    -- Neovide Padding
    vim.g.neovide_padding_top = 5
    vim.g.neovide_padding_bottom = 5
    vim.g.neovide_padding_right = 5
    vim.g.neovide_padding_left = 5

    -- Neovide Refresh Rate
    vim.g.neovide_refresh_rate = 120
    vim.g.neovide_refresh_rate_idle = 5

    -- Neovide Font Settings
    vim.o.guifont = "Iosevka Nerd Font Mono:22"

    -- Neovide Cursor Settings
    vim.g.neovide_cursor_vfx_mode = "railgun"
    vim.g.neovide_cursor_vfx_particle_density = 25.0
    vim.g.neovide_cursor_vfx_particle_lifetime = 0.7

    -- vim.schedule(function()
    --     vim.cmd("NeovideFocus")
    -- end)
end
