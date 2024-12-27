local opt = vim.opt
opt.autoindent = true
opt.tabstop = 4
opt.smarttab = true
opt.relativenumber = true
opt.title = true
opt.expandtab = true
opt.shiftwidth = 4
opt.conceallevel = 1


opt.formatoptions = {
    ["1"] = false,
    ["2"] = false, -- Use indent from 2nd line of a paragraph
    q = true, -- continue comments with gq"
    c = true, -- Auto-wrap comments using textwidth
    r = false, -- Continue comments when pressing Enter
    n = false, -- Recognize numbered lists
    t = false, -- autowrap lines using text width value
    j = true, -- remove a comment leader when joining lines.
    o = false,
    -- Only break if the line was not longer than 'textwidth' when the insert
    -- started and only at a white character that has been entered during the
    -- current insert command.
    l = true,
    v = true,
}

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
    vim.o.guifont = "Iosevka Nerd Font Mono:20"

    -- Neovide Cursor Settings
    vim.g.neovide_cursor_vfx_mode = "railgun"
    vim.g.neovide_cursor_vfx_particle_density = 25.0
    vim.g.neovide_cursor_vfx_particle_lifetime = 0.7

    -- vim.schedule(function()
    --     vim.cmd("NeovideFocus")
    -- end)
end
