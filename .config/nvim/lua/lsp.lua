vim.api.nvim_create_autocmd('LspAttach', {
    callback = function (args)
        local keymap = vim.keymap
        local lsp = vim.lsp
        local diag = vim.diagnostic
        local bufopts = { noremap = true, silent = true }
        
        keymap.set('n', 'gr', lsp.buf.references, bufopts)
        keymap.set('n', 'gd', lsp.buf.definition, bufopts)
        keymap.set('n', '<leader>rn', lsp.buf.rename, bufopts)
        keymap.set('n', 'K', lsp.buf.hover, bufopts)
        keymap.set('n', '<leader>f', function()
            vim.lsp.buf.format({ async = true })
        end, bufopts)
        keymap.set('n', '<leader>d', diag.open_float) 
        keymap.set('n', '<leader>q', diag.setqflist)

        local client = vim.lsp.get_client_by_id(args.data.client_id)
        local bufnr = args.buf
        if client and client.server_capabilities.documentFormattingProvider then
            vim.api.nvim_create_autocmd('BufWritePre', {
                buffer = bufnr,
                callback = function()
                    vim.lsp.buf.format({ async = false })
                end,
            })
        end
    end
})

vim.lsp.enable({ 'ty', 'clangd', 'gopls' })
