return {
    cmd = { 'clangd'},
    root_markers = { 
        '.git',
        '.clangd',
        '.compile_commands.json',
        '.clang-tidy',
        '.clang-format',
        'compile_flags.txt',
        'configure.ac' -- AutoTools
    },
    filetypes = { 'c', 'cpp' },
}
