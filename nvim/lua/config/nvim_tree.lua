return {
    'nvim-tree/nvim-tree.lua',
    requires = {
        'nvim-tree/nvim-web-devicons',
    },
    tag = 'nightly',

    config = function()
        require 'nvim-tree'.setup {
            renderer = {
                icons = {
                    padding = "  "
                }
            }
        }
    end
}
