require("obsidian").setup {
    ui = { enable = false },
    notes_subdir = "notes",
    workspaces = {
        {
            name = "Vault13",
            path = "/Volumes/NOTES/Vault13",
        }
    },
    picker = { name = "fzf-lua", },
    note_id_func = function(title)
        -- Create note IDs in a Zettelkasten format with a timestamp and a suffix.
        -- In this case a note with the title 'My new note' will be given an ID that looks
        -- like '1657296016-my-new-note', and therefore the file name '1657296016-my-new-note.md'
        local suffix = ""
        if title ~= nil then
            -- If title is given, transform it into valid file name.
            suffix = title:gsub(" ", "-"):gsub("[^A-Za-z0-9-]", ""):lower()
        else
            -- If title is nil, just add 4 random uppercase letters to the suffix.
            for _ = 1, 4 do
                suffix = suffix .. string.char(math.random(65, 90))
            end
        end
        return suffix
    end,
    disable_frontmatter = true,
    note_frontmatter_func = function(note)
        local out = { creation_date = os.date("%Y-%m-%d", os.time()), title = note.title }

        if note.metadata ~= nil and vim.tbl_isempty(note.metadata) then
            for k, v in pairs(note.metadata) do
                out[k] = v
            end
        end

        return out
    end,
}

do
    local map = vim.keymap.set

    map("n", "<leader>ff", "<cmd>ObsidianSearch<cr>", { desc = "Search Obsidian notes" })
end


-- Create new autocmmands to sync obsidian application with neovim
do
    vim.api.nvim_create_autocmd("BufAdd", {
        pattern = OBSIDIAN_VAULTS,
        command = "ObsidianOpen",
    })

    vim.api.nvim_create_autocmd("InsertLeave", {
        pattern = OBSIDIAN_VAULTS,
        command = "w",
    })
end
