return {
    'stevearc/conform.nvim',
    opts = {
        formatters_by_ft = {
            c = { "clang_format" },
            nix = { "alejandra" },
            typst = { "typstfmt" },
        },
        default_format_opts = {
            lsp_format = "fallback",
        },
        formatters = {
            clang_format = {
                cmd = "clang-format",
                args = "--style=file:/Users/biggerben/.config/nvim/.clang-format"
            }
        }
    },
}
