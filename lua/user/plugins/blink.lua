return {
    "saghen/blink.cmp",
    version = "*",
    opts = require "user.plugins.config.blink",
    event = "InsertEnter",
    dependencies = {
        "saghen/blink.compat"
    },
}
