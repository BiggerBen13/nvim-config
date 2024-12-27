local cmp = require("cmp")
local lspkind = require("lspkind")
local luasnip = require("luasnip")

-- Format Options {{{1
local format_options = {
    mode = "symbol_text",
    menu = ({
        buffer = "[Buffer]",
        nvim_lsp = "[LSP]",
        luasnip = "[LuaSnip]",
        nvim_lua = "[Lua]",
        latex_symbols = "[Latex]",
    })
} -- }}}1

cmp.setup({
    snippet = { expand = function(args) luasnip.lsp_expand(args.body) end, },
    window = {
        -- completion = cmp.config.window.bordered(),
        -- documentation = cmp.config.window.bordered(),
    },
    formatting = {
        format = lspkind.cmp_format(format_options),
    },
    -- mappings {{{1
    mapping = {
        ["<C-n>"] = cmp.mapping.select_next_item(),
        ["<C-p>"] = cmp.mapping.select_prev_item(),
        ["<C-b>"] = cmp.mapping.scroll_docs(-4),
        ["<C-f>"] = cmp.mapping.scroll_docs(4),
        ["<C-y>"] = cmp.mapping.confirm { select = true },
        ["<C-Space"] = cmp.mapping.complete {},

        ['<C-l>'] = cmp.mapping(function()
            if luasnip.expand_or_locally_jumpable() then
                luasnip.expand_or_jump()
            end
        end, { 'i', 's' }),
        ['<C-h>'] = cmp.mapping(function()
            if luasnip.locally_jumpable(-1) then
                luasnip.jump(-1)
            end
        end, { 'i', 's' }),
    }, -- }}}1
    -- sources {{{1
    sources = cmp.config.sources({
        { name = "nvim_lsp" },
        { name = "luasnip" },
        { name = "path" },
        { name = "neorg" },
        { name = "lazydev", group_index = 0 }
    }, {
        { name = "buffer", keyword_length = 3 }
    }),
    -- }}}1
})


-- vim:foldmethod=marker
