return {
    cmd = { 
        'clangd',
        '--fallback-style=GNU',
        '--header-insertion=iwyu'
    },
    filetypes = { 'c', 'cpp'},
    root_markers = { 'compile_commands.json', 'compile_flags.txt', 'CMakeLists.txt', '.git'}
}
