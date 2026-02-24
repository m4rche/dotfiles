return {
    cmd = { 'gopls' },
    filetypes = { 'go' },
    root_markers = { 'go.mod', 'go.sum', '.git' },
    settings = {
        gopls = {
            gofumpt = true,
            staticcheck = true,
        },
    },
}
