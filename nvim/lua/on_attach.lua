return function(client, bufnr)
    require("nvim-navic").attach(client, bufnr)

    if client.resolved_capabilities.document_formatting then
        local format = vim.api.nvim_create_augroup('format', { clear = true })

        vim.api.nvim_create_autocmd('BufWritePre', {
            pattern = '*',
            group = format,
            command = 'lua vim.lsp.buf.formatting_seq_sync()'
        })
    end
end
