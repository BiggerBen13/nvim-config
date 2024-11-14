return {
    {
        "hrsh7th/nvim-cmp",
        config = function() require "user.plugins.config.cmp" end,
        event = { "InsertEnter" }, -- "CmdlineEnter" 
        dependencies = {
            { "hrsh7th/cmp-buffer" },
            { "hrsh7th/cmp-path" },
            { "hrsh7th/cmp-cmdline" },
            { "onsails/lspkind.nvim" },
        }
    },
}

