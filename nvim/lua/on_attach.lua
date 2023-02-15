return function(client, bufnr)
    -- local navic = require("nvim-navic")
    -- navic.attach(client, bufnr)

    if client.server_capabilities.documentFormattingProvider then
        local format = vim.api.nvim_create_augroup('format', { clear = true })

        vim.api.nvim_create_autocmd('BufWritePre', {
            pattern = '*',
            group = format,
            command = 'lua vim.lsp.buf.formatting_seq_sync()'
        })
    end
end
