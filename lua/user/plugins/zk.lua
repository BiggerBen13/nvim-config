return {
    "zk-org/zk-nvim",
    event = "VeryLazy",
    config = function()
        require("zk").setup {
            picker = "fzf_lua",
        }
    end,
    keys = {
        { "<leader>zo", function() require("zk.commands").get("ZkNotes")() end, desc = "List notes" },
        { "<leader>zl", function() require("zk.commands").get("ZkInsertLink")() end, desc = "Insert Link"},
    }
}
