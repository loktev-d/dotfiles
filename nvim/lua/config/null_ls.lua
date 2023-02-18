return {
    'jose-elias-alvarez/null-ls.nvim',
    requires = 'nvim-lua/plenary.nvim',

    config = function()
        local null_ls = require 'null-ls'
        local on_attach = require 'on_attach'

        null_ls.setup {
            sources = {
                null_ls.builtins.formatting.prettier.with {
                    extra_filetypes = { "svelte", "astro" },
                    on_attach = on_attach
                }
            },
        }
    end
}
