---@module "blink.cmp"
---@type blink.cmp.Config
return {
    keymap = { preset = 'default' },
    appearance = {
        -- Sets the fallback highlight groups to nvim-cmp's highlight groups
        -- Useful for when your theme doesn't support blink.cmp
        -- Will be removed in a future release
        -- use_nvim_cmp_as_default = true,
        -- Set to 'mono' for 'Nerd Font Mono' or 'normal' for 'Nerd Font'
        -- Adjusts spacing to ensure icons are aligned
        nerd_font_variant = 'mono'
    },
    sources = {
        default = { 'lsp', 'path', 'snippets', 'buffer' },
        providers = {
            -- Lazydev for neovim plugin development
            lazydev = {
                name = "LazyDev",
                module = "lazydev.integrations.blink",
                score_offset = 100,
            },

            -- Obsidian sources
            obsidian = {
                name = "obsidian",
                module = "blink.compat.source",
            },
            obsidian_new = {
                name = "obsidian_new",
                module = "blink.compat.source",
            },
            obsidian_tags = {
                name = "obsidian_tags",
                module = "blink.compat.source",
            },
        }
    },
}
