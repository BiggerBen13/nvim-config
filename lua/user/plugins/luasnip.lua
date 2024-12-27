return {
    "L3MON4D3/LuaSnip",
    -- follow latest release.
    version = "v2.*", -- Replace <CurrentMajor> by the latest released major (first number of latest release)
    config = function() require "user.plugins.config.luasnip" end,
    -- install jsregexp (optional!).
    build = "make install_jsregexp",
    dependencies = {
        { "saadparwaiz1/cmp_luasnip" },
        -- { "rafamadriz/friendly-snippets" },
    }
}
