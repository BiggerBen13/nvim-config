local map = vim.keymap.set
vim.g.mapleader = " "
vim.g.localmapleader = "\\"

map("n", "<leader>gp", "<CMD>bp<CR>", { desc = "goto previous buffer" })
map("n", "<leader>gn", "<CMD>bn<CR>", { desc = "goto next buffer" })
-- map({ "n", "i" }, "<C-l>", "<c-g>u<Esc>[s1z=`]a<c-g>u", { desc = "correct last spelling mistake", noremap = true })

map("n", "<leader>.", vim.cmd.Ex, {desc = "open Explore"})

map("n", "gK", function()
    local current_config = vim.diagnostic.config()
    if current_config == nil then
        vim.notify_once("Couldn't get diagnostic config")
        return
    end

    vim.diagnostic.config({
        virtual_text = not current_config.virtual_text,
        virtual_lines = not current_config
            .virtual_lines
    })
end, { desc = "Toggle virtual lines" })
