require("neorg").setup({
    load = {
        ["core.defaults"] = {},
        ["core.concealer"] = {
            config = {
                icon_preset = "diamond",
            }
        },
        ["core.export"] = {},
        ["core.export.markdown"] = {},
        ["core.itero"] = {},
        ["core.promo"] = {},
        ["core.completion"] = { config = { engine = "nvim-cmp" }, },
        ["core.dirman"] = {
            config = {
                workspaces = {
                    school = "~/neorg/school",
                    notes = "~/neorg/notes",
                    default = "~/neorg/notes",
                },
                index = "index.norg"
            }
        }
    }
})

