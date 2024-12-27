return {
        "rcarriga/nvim-dap-ui",
        ft = {
                "zig",
                "c",
        },
        config = function()
                require "user.plugins.config.dap"
        end,
        dependencies = {
                "mfussenegger/nvim-dap",
                "nvim-neotest/nvim-nio",
        },
}
