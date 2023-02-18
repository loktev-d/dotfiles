return {
    "glepnir/lspsaga.nvim",
    branch = "main",

    config = function()
        require 'lspsaga'.setup {
            symbol_in_winbar = {
                enable = false,
            },
        }
    end
}
