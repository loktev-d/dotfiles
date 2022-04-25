return function(client, bufnr)
    local opts = { noremap = true, silent = true }

    vim.api.nvim_buf_set_keymap(bufnr, "n", "<space>r", "<cmd>Lspsaga rename<cr>", opts)
    vim.api.nvim_buf_set_keymap(bufnr, "n", "<space>a", "<cmd>Lspsaga code_action<cr>", opts)
    vim.api.nvim_buf_set_keymap(bufnr, "x", "<space>a", ":<c-u>Lspsaga range_code_action<cr>", opts)
    vim.api.nvim_buf_set_keymap(bufnr, "n", "K", "<cmd>Lspsaga hover_doc<cr>", opts)
    vim.api.nvim_buf_set_keymap(bufnr, "n", "go", "<cmd>Lspsaga show_line_diagnostics<cr>", opts)
    vim.api.nvim_buf_set_keymap(bufnr, "n", "gj", "<cmd>Lspsaga diagnostic_jump_next<cr>", opts)
    vim.api.nvim_buf_set_keymap(bufnr, "n", "gk", "<cmd>Lspsaga diagnostic_jump_prev<cr>", opts)
    vim.api.nvim_buf_set_keymap(bufnr, "n", "<C-k>", "<cmd>lua require('lspsaga.action').smart_scroll_with_saga(-1)<cr>", {})
    vim.api.nvim_buf_set_keymap(bufnr, "n", "<C-j>", "<cmd>lua require('lspsaga.action').smart_scroll_with_saga(1)<cr>", {})


    if client.resolved_capabilities.document_formatting then
        local format = vim.api.nvim_create_augroup('format', { clear = true })

        vim.api.nvim_create_autocmd('BufWritePre', {
            pattern = '*',
            group = format,
            command = 'lua vim.lsp.buf.formatting_seq_sync()'
        })
    end
end
