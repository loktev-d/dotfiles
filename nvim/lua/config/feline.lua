return {
    'feline-nvim/feline.nvim',

    config = function()
        local ctp_feline = require "catppuccin.groups.integrations.feline"

        ctp_feline.setup {
            assets = {
                git = {
                    branch = "",
                }
            }
        }

        require('feline').setup {
            components = ctp_feline.get(),
            disable = {
                filetypes = {
                    '^NvimTree$',
                    '^packer$',
                    '^fugitive$',
                    '^fugitiveblame$',
                    '^help$'
                },
            }
        }
    end
}
