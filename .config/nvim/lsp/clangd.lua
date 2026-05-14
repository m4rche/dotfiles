return {
    cmd = { 
        'clangd',
        '--fallback-style=LLVM',
        '--header-insertion=never',
    },
    filetypes = { 'c', 'cpp'},
    root_markers = { 'compile_commands.json', 'compile_flags.txt', 'CMakeLists.txt', '.git'}
}
