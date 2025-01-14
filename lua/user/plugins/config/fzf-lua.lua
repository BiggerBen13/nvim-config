local fzf = require("fzf-lua")
local map = vim.keymap.set

fzf.setup{
    files = {
        fd_opts = [[--color=never --hidden --follow --exclude .git --exclude .obsidian --type f]]
    }
}

map("n", "<leader>ff", fzf.files, {})
map("n", "<leader>fg", fzf.live_grep, {})
map("n", "<leader>fb", fzf.buffers, {})
-- map("n", "<leader>fh", fzf., {})
-- map("n", "<leader>ft", , {})
