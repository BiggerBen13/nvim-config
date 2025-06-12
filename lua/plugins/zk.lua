local note_books = {
    "~/notes"
}

---@type LazySpec
return {
    "zk-org/zk-nvim",
    ft = { "markdown" },
    config = function() require "plugins.config.zk" end,
    enabled = function()
        local cwd = vim.fn.getcwd()
        for _, note_book in next, note_books do
            if vim.fn.expand(note_book) == cwd then
                return true
            end
            return false
        end
    end,
}
