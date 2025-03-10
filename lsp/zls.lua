return {
    cmd = { "zls", "--log-level", "debug" },
    filetypes = { "zig" },
    root_markers = { "build.zig", "build.zig.zon"  },
    settings = {
        enable_argument_placeholders = false,
        semantic_tokens = "full",
    },
}
